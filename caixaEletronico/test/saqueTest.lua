EXPORT_ASSERT_TO_GLOBALS = true

-- Unit testing starts
package.path = package.path .. ";../source/?.lua"
package.path = package.path .. ";../luaunit-master/?.lua"

--package.path = package.path .. ';../luaunit-master/luaunit.lua'
require('luaunit')
--require('/home/daniel/dojo/caixaEletronico/luaunit-master/luaunit.lua')

-- funcao do caixa eletronico
--package.path = package.path .. ';../source/caixa.lua;'

require('caixa')

TestWithInt = {} --class
    function TestWithInt:setUp() 
        self.saque1 = 30
        self.saque2 = 80
    end

    function TestWithInt:tearDown() 
    end

    function TestWithInt:testSaque1()
        result = saque( self.saque1 )
        assertEquals( type(result), 'table' )
        --assertEquals( #result, 2 )
        assertEquals( result[100], 0 )
        assertEquals( result[50], 0 )
        assertEquals( result[20], 1 )
        assertEquals( result[10], 1 )
    end

    function TestWithInt:testSaque2()
        result = saque( self.saque2 )
        assertEquals( type(result), 'table' )
        assertEquals( result[100], 0 )
        assertEquals( result[50], 1 )
        assertEquals( result[20], 1 )
        assertEquals( result[10], 1 )
    end

-- class TestWithInt

--[[
TestWithFloat = {} --class
    function TestWithFloat:setUp() 
        -- this function is run before each test, so that multiple
        -- tests can share initialisations
        self.a = 1.1
        self.b = 2.1
    end

    function TestWithFloat:tearDown() 
        -- this function is executed after each test
        -- here, we have nothing to do so we could have avoid
        -- declaring it
    end

    function TestWithFloat:testSuperFunction()
        result = my_super_function( self.a, self.b )
        assertEquals( type(result), 'number' )
        -- will fail
        assertEquals( result, 3 )
    end

    function TestWithFloat:testBadFunction()
        result = my_bad_function( self.a, self.b )
        assertEquals( type(result), 'number' )
        -- will work, but only by chance :-)
        assertEquals( result, -1 )
    end
-- class TestWithFloat
--]]

--LuaUnit:run()
lu = LuaUnit.new()
lu:setOutputType("tap")
os.exit( lu:runSuite() )

