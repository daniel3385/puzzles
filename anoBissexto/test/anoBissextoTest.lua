EXPORT_ASSERT_TO_GLOBALS = true

-- Unit testing starts
package.path = package.path .. ";../source/?.lua"
package.path = package.path .. ";../../luaunit-master/?.lua"

require('luaunit')

require('ehAnoBissexto')

TestWithInt = {} --class
    function TestWithInt:setUp() 
        self.ano1 = 1600
        self.ano2 = 1732
        self.ano3 = 1888
        self.ano4 = 1944
        self.ano5 = 2008

        self.ano6 = 1742
        self.ano7 = 1889
        self.ano8 = 1951
        self.ano9 = 2011
    end

    function TestWithInt:tearDown() 
    end

    function TestWithInt:testBissexto()
        result = ehAnoBissexto( self.ano1 )
        assertEquals( type(result), 'boolean' )
        assertEquals( result, true )

        result = ehAnoBissexto( self.ano2 )
        assertEquals( type(result), 'boolean' )
        assertEquals( result, true )

        result = ehAnoBissexto( self.ano3 )
        assertEquals( type(result), 'boolean' )
        assertEquals( result, true )

        result = ehAnoBissexto( self.ano4 )
        assertEquals( type(result), 'boolean' )
        assertEquals( result, true )

        result = ehAnoBissexto( self.ano5 )
        assertEquals( type(result), 'boolean' )
        assertEquals( result, true )
    end

    function TestWithInt:testNaoEhBissexto()
        result = ehAnoBissexto( self.ano6 )
        assertEquals( type(result), 'boolean' )
        assertEquals( result, false )

        result = ehAnoBissexto( self.ano7 )
        assertEquals( type(result), 'boolean' )
        assertEquals( result, false )

        result = ehAnoBissexto( self.ano8 )
        assertEquals( type(result), 'boolean' )
        assertEquals( result, false )

        result = ehAnoBissexto( self.ano9 )
        assertEquals( type(result), 'boolean' )
        assertEquals( result, false )
    end
-- class TestWithInt

--LuaUnit:run()
lu = LuaUnit.new()
lu:setOutputType("tap")
os.exit( lu:runSuite() )

