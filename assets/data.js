export const demo = {
  heroStat: "6 doctors · 18 open slots",
  heroNote: "Demo snapshot: morning session is 72% full.",
  bars: [["Morning","w90"],["Afternoon","w75"],["Evening","w60"]],
  strip: [["6 sample doctors","Invented names and specialties"],["No sign-up","Open the page and try it"],["Local log only","Choices stay in this browser"],["Free to host","Cloudflare free tier"]],
  safetyNote: "Every doctor, slot, and token below is invented. Nothing you click is sent to a clinic.",
  tableHead: ["Doctor","Specialty","Next slot","Queue","Status"],
  rows: [["Dr. A. Mehta","General","09:30","4 waiting","On time"],["Dr. R. Iyer","Dermatology","10:15","2 waiting","On time"],["Dr. S. Kulkarni","Pediatrics","11:00","6 waiting","Busy"],["Dr. N. Rao","Orthopedics","11:45","1 waiting","On time"],["Dr. P. Deshmukh","ENT","12:20","3 waiting","Break"],["Dr. K. Shah","General","14:10","0 waiting","Available"]],
  workflow: [["Pick a doctor","Choose a row from the simulated roster."],["Choose a slot","The demo shows a time, never a real calendar hold."],["See a local token","A token number appears in your browser log only."]],
  actions: [["Book next slot"," booked the next simulated slot."],["Call next token"," moved one queue token forward."],["Mark completed"," marked a simulated visit complete."],["Clear queue"," cleared the local queue view."]]
};
