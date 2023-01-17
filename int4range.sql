--let's learn the basic syntax
select int4range(1,10)

--It's important to make the distinction between whether or not 
--         particular endpoint is included.
--() exclude end points
--[] include end points
select int4range(1,10,'()')
select int4range(1,10,'[]')
select int4range(1,10,'[)')
select int4range(1,10,'(]')



-- @> is the inclusion operator
-- i like to call this the contains operator, this is a simple term, and it's result is obvious
select int4range(1,10,'[]') @> 1
select int4range(1,10,'[]') @> 10
select int4range(1,10,'[]') @> 11
select int4range(1,10,'()') @> 9