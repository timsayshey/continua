component extends="models.Model" output="false" 
{
	function init()
	{						
		table(false);
	}

	function save() {
		writeDump([this,arguments]); abort;
	}

	function create(){
		writeDump([this,arguments]); abort;
	}

	function update(){
		writeDump([this,arguments]); abort;
	}

	function delete() {
		writeDump([this,arguments]); abort;
	}
	function getAll(required type) {
		cfhttp(method="GET", url="http://continua.com:8080/openhmis/api/v3/#arguments.type#/", result="result") {
		    cfhttpparam(name="Authorization", type="header", value="eyJhbGciOiJSUzI1NiIsImtpZCI6Ijc3ZDRjOTM1Y2JkYTAxZGZiY2E1MzZkNGM1MTY0YjM2MGJhMDk4YmUifQ.eyJpc3MiOiJhY2NvdW50cy5nb29nbGUuY29tIiwiYXRfaGFzaCI6IkQzdUZkbGRPSlRxVHE5ZGQzdl9PdkEiLCJhdWQiOiI5ODQ0MjY1ODkyNjEtOHBndDNybGg0OWp0YjdpbmIxb2I0aGZqdmNwdHJnM2QuYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJzdWIiOiIxMTAzMzA4MTY0MDk0OTU4ODAyODIiLCJlbWFpbF92ZXJpZmllZCI6dHJ1ZSwiYXpwIjoiOTg0NDI2NTg5MjYxLThwZ3QzcmxoNDlqdGI3aW5iMW9iNGhmanZjcHRyZzNkLmFwcHMuZ29vZ2xldXNlcmNvbnRlbnQuY29tIiwiaGQiOiJlaXFpbnRlcmFjdGl2ZS5jb20iLCJlbWFpbCI6InRpbUBlaXFpbnRlcmFjdGl2ZS5jb20iLCJpYXQiOjE0NzcxMTIyMDAsImV4cCI6MTQ3NzExNTgwMH0.OSKkl-ok0vA4Cu7bR4nM7K0KP7eFPY4SPMCHh3VvP7K0MaPDO8cMWZmgvO-J2I0YacMkHPk4EoRtzsl-MFUA-YBPi3GV5mYMI9t5FAO-Jp2bggncnT26BuOpWZ9t_p_2ysNSJye6wQ2VSVpXwBR4hzXIQcNtAolUg6LRA9WrGb7reB6JEA4MF2leZelJNo1q4KSX0s-clULZ2365ildRrFwWh7BBHPsjBPEf0vDFRDZQXfTBz2R1Po3eiNGSCBI-Bx5ebx13nXNoqneuKxSSfHRpSPfe9OyWLIPH-9wAG342_0v7ca_olRkeiBzmgS9AQy_4OJqoqwTP76uKeHBxKg");
		}
		if(result.status_code eq 200 AND isJSON(result.filecontent)) {
			var json = deserializeJSON(result.filecontent);

			if(json.containsKey("data") && json.data.containsKey("items") && isArray(json.data.items)) {
				if(cacheThis(type="check",name=type)) {
					return cacheThis(type="get",name=type);
				} else {
					var data = jsonToQuery(json.data.items);
					cacheThis(type="add",name=type,data=data);
					return data;
				}
			}
		} 
		return {"data":{"items":[]},"api":false};
	}
	
}