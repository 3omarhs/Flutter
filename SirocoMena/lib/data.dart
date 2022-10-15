
var items = [
  {
    'name':'Inquiry',
    'items':['Personal Information', 'My Leaves', 'My Vacation', 'Slip Salary', 'Salary Details', 'My Overtime', 'My Attendance'],
    'Personal Information':[
      {'EmployeeID':'1055', 'firstName':'Safaa', 'secondName':'Adham', 'lastName':'Sadi', 'city':'Amman', 'country':'Jordan', 'birthDate':'15/10/2005', 'birthPlace':'Canada', 'gender':'Female'},
      {'EmployeeID':'1098', 'firstName':'Ali', 'secondName':'Mahmoud', 'lastName':'Ghamri', 'city':'Irbid', 'country':'Jordan', 'birthDate':'12/1/1999', 'birthPlace':'JO', 'gender':'Male'},
      {'EmployeeID':'1055', 'firstName':'Safaa', 'secondName':'Adham', 'lastName':'Sadi', 'city':'Amman', 'country':'Jordan', 'birthDate':'15/10/2005', 'birthPlace':'Canada', 'gender':'Female'},
      {'EmployeeID':'1098', 'firstName':'Ali', 'secondName':'Mahmoud', 'lastName':'Ghamri', 'city':'Irbid', 'country':'Jordan', 'birthDate':'12/1/1999', 'birthPlace':'JO', 'gender':'Male'},
      {'EmployeeID':'1055', 'firstName':'Safaa', 'secondName':'Adham', 'lastName':'Sadi', 'city':'Amman', 'country':'Jordan', 'birthDate':'15/10/2005', 'birthPlace':'Canada', 'gender':'Female'},
      {'EmployeeID':'1098', 'firstName':'Ali', 'secondName':'Mahmoud', 'lastName':'Ghamri', 'city':'Irbid', 'country':'Jordan', 'birthDate':'12/1/1999', 'birthPlace':'JO', 'gender':'Male'},
      {'EmployeeID':'1055', 'firstName':'Safaa', 'secondName':'Adham', 'lastName':'Sadi', 'city':'Amman', 'country':'Jordan', 'birthDate':'15/10/2005', 'birthPlace':'Canada', 'gender':'Female'},
      {'EmployeeID':'1098', 'firstName':'Ali', 'secondName':'Mahmoud', 'lastName':'Ghamri', 'city':'Irbid', 'country':'Jordan', 'birthDate':'12/1/1999', 'birthPlace':'JO', 'gender':'Male'},
      {'EmployeeID':'1055', 'firstName':'Safaa', 'secondName':'Adham', 'lastName':'Sadi', 'city':'Amman', 'country':'Jordan', 'birthDate':'15/10/2005', 'birthPlace':'Canada', 'gender':'Female'},
      {'EmployeeID':'1098', 'firstName':'Ali', 'secondName':'Mahmoud', 'lastName':'Ghamri', 'city':'Irbid', 'country':'Jordan', 'birthDate':'12/1/1999', 'birthPlace':'JO', 'gender':'Male'},
    ],
    'My Leaves':[
      {'leave':'sick', 'from_time':'7:00', 'to_time':'3:15', 'leave_date':'22/9/2022', 'leave_hours':'0', 'posted':'6/10/2022'},
      {'leave':'emergancy', 'from_time':'4:00', 'to_time':'6:45', 'leave_date':'24/9/2022', 'leave_hours':'5', 'posted':'11/10/2022'},
      {'leave':'bord', 'from_time':'9:00', 'to_time':'8:15', 'leave_date':'27/9/2022', 'leave_hours':'3', 'posted':'11/11/2022'},
      {'leave':'sick', 'from_time':'7:00', 'to_time':'5:55', 'leave_date':'29/9/2022', 'leave_hours':'0', 'posted':'16/11/2022'},
    ],
    'My Vacation':[
      {'vacation':'Annula', 'from_date':'18/10/2022', 'to_date':'22/10/2022', 'period':'8', 'value':'null', 'note':'I am so sik and cant be in the company tomorrow.', 'status':'Disactive'},
      {'vacation':'Unpaid', 'from_date':'20/10/2022', 'to_date':'1/11/2022', 'period':'13', 'value':'null', 'note':'I am so sik and cant be in the company tomorrow.', 'status':'Active'},
      {'vacation':'sick', 'from_date':'25/10/2022', 'to_date':'29/10/2022', 'period':'4', 'value':'null', 'note':'I am so sik and cant be in the company tomorrow.', 'status':'Active'},
    ],
    'Slip Salary':[
      {'Employee':'Omar', 'Year':'2022', 'Month':'9'},
      {'Employee':'Ali', 'Year':'2023', 'Month':'10'},
      {'Employee':'Safaa', 'Year':'2022', 'Month':'8'},
      {'Employee':'Aseel', 'Year':'2023', 'Month':'10'},
      {'Employee':'Amer', 'Year':'2022', 'Month':'9'},
      {'Employee':'Sarah', 'Year':'2023', 'Month':'10'},
    ],
    'Salary Details':[
      {'Description':'None', 'Amount':'1500'},
      {'Description':'not-yet', 'Amount':'1200'},
      {'Description':'paid', 'Amount':'1350'},
      {'Description':'not-yet', 'Amount':'1100'},
      {'Description':'paid', 'Amount':'1550'},
    ],
    'My Overtime':[
      {'Overtime':'5', 'OvertimeDate':'18/10/2022', 'Total Hour':'2', 'Duration':'8', 'Value':'1'},
      {'Overtime':'3', 'OvertimeDate':'12/10/2022', 'Total Hour':'2', 'Duration':'8', 'Value':'0'},
      {'Overtime':'7', 'OvertimeDate':'15/10/2022', 'Total Hour':'5', 'Duration':'8', 'Value':'1'},
      {'Overtime':'8', 'OvertimeDate':'16/10/2022', 'Total Hour':'4', 'Duration':'8', 'Value':'0'},
      {'Overtime':'4', 'OvertimeDate':'11/10/2022', 'Total Hour':'7', 'Duration':'8', 'Value':'1'},
      {'Overtime':'1', 'OvertimeDate':'17/10/2022', 'Total Hour':'3', 'Duration':'8', 'Value':'0'},
      {'Overtime':'0.5', 'OvertimeDate':'19/10/2022', 'Total Hour':'2', 'Duration':'8', 'Value':'0'},
    ],
    'My Attendance':[
      {'Shift':'Morning', 'Transaction Date':'18/10/2022', 'TimeIn':'05:22', 'Timeout':'16:55', 'ShiftTimeIn':'5:00', 'ShiftTimeOut':'12:00', 'Required':'Yes', 'DayType':'Vacation', 'Actual':'unknown', 'Leaves':'7', 'Overtime':'1', 'Total':'5'},
      {'Shift':'Night', 'Transaction Date':'22/10/2022', 'TimeIn':'17:00', 'Timeout':'00:00', 'ShiftTimeIn':'18:00', 'ShiftTimeOut':'00:00', 'Required':'No', 'DayType':'Workday', 'Actual':'null', 'Leaves':'2', 'Overtime':'2.5', 'Total':'9'},
    ]
  },


  {
    'name':'Requests',
    'items':['Vacation Request', 'Leave Request', 'Overtime Request'],
    'Vacation Request':[
      {'Vacation':'Annula', 'From Date':'18/10/2022', 'To Date':'22/10/2022', 'Period':'8', 'Status':'Disactive', 'Note':'I am so sik and cant be in the company tomorrow.', 'Manager Note':'it`s okay......................................'},
      {'Vacation':'Unpaid', 'From Date':'20/10/2022', 'To Date':'1/11/2022', 'Period':'13', 'Status':'Active', 'Note':'I am so sik and cant be in the company tomorrow.', 'Manager Note':'refused'},
      {'Vacation':'sick', 'From Date':'25/10/2022', 'To Date':'29/10/2022', 'Period':'4', 'Status':'Disactive', 'Note':'I am so sik and cant be in the company tomorrow.', 'Manager Note':'refused'},
      {'Vacation':'Unpaid', 'From Date':'20/10/2022', 'To Date':'1/11/2022', 'Period':'13', 'Status':'Active', 'Note':'I am so sik and cant be in the company tomorrow.', 'Manager Note':'it`s okay..'},
      {'Vacation':'sick', 'From Date':'24/10/2022', 'To Date':'1/15/2022', 'Period':'13', 'Status':'Active', 'Note':'I am so sik and cant be in the company tomorrow.', 'Manager Note':'refused'},
    ],
    'Leave Request':[
      {'Leave':'Emergancy', 'From Time':'5:22', 'To Time':'7:00', 'Leave Date':'22/10/2022', 'STATUS':'Disactive', 'Note':'I can`t complete my day I`ve Emergency case.', 'Manager Note':'it`s okay..'},
      {'Leave':'Boring', 'From Time':'6:00', 'To Time':'7:00', 'Leave Date':'22/10/2022', 'STATUS':'Active', 'Note':'I bore in work!.', 'Manager Note':'What!!, of course refused!'},
      {'Leave':'Emergancy', 'From Time':'2:30', 'To Time':'5:00', 'Leave Date':'22/10/2022', 'STATUS':'Disactive', 'Note':'I can`t complete my day I`ve Emergency case.', 'Manager Note':'it`s okay..'},
    ],
    'Overtime Request':[
      {'Overtime':'Extra Work', 'Amount':'22', 'Overtime Date':'1/11/2022', 'Calculation Date':'22/10/2022', 'Manager Note':'it`s okay..', 'Duration':'5', 'Rate':'good', 'Note':'I can`t complete my day I`ve Emergency case.', 'Status':'Disactive'},
      {'Overtime':'Extra Work', 'Amount':'22', 'Overtime Date':'1/11/2022', 'Calculation Date':'22/10/2022', 'Manager Note':'it`s okay..', 'Duration':'2', 'Rate':'excellence', 'Note':'I can`t complete my day I`ve Emergency case.', 'Status':'Disactive'},
      {'Overtime':'Extra Work', 'Amount':'22', 'Overtime Date':'1/11/2022', 'Calculation Date':'22/10/2022', 'Manager Note':'it`s okay..', 'Duration':'8', 'Rate':'bad', 'Note':'I can`t complete my day I`ve Emergency case.', 'Status':'Disactive'},
      {'Overtime':'Extra Work', 'Amount':'22', 'Overtime Date':'1/11/2022', 'Calculation Date':'22/10/2022', 'Manager Note':'it`s okay..', 'Duration':'3', 'Rate':'good', 'Note':'I can`t complete my day I`ve Emergency case.', 'Status':'Disactive'},
    ],
  },




  {
    'name':'Approvals',
    'items':['Approvals', 'Approvals History'],
    'Approvals':[
      {'Employee Name':'Safaa', 'Approval Type':'Personal', 'Type':'1', 'Status':'pending', 'Note':'none', 'Action':'later on'},
      {'Employee Name':'Ahmad', 'Approval Type':'public', 'Type':'3', 'Status':'pending', 'Note':'harry up', 'Action':'done'},
    ],
    'Approvals History':[
      {'Employee Name':'Adam', 'Approval Type':'Personal', 'Type':'1', 'Status':'done', 'Employee Note':'none'},
      {'Employee Name':'Ali', 'Approval Type':'public', 'Type':'2', 'Status':'revoked', 'Employee Note':'none'},
      {'Employee Name':'Sara', 'Approval Type':'public', 'Type':'1', 'Status':'revoked', 'Employee Note':'none'},
      {'Employee Name':'Omar', 'Approval Type':'Personal', 'Type':'3', 'Status':'done', 'Employee Note':'none'},
    ],
  },

];

var lists = {
  'VacationRequestStatus':['Active', 'Disactive'],
  'VacationRequestVacations':['Annula', 'Unpaid', 'sick']
};