// Soittila Lämmönohjaus projekti


#include "EtherShield.h"

int pinC = 0;
int pinB = 0;
int pinA = 0;
int pin9 = 0;
int pin8 = 0;
int pin7 = 0;
int pin6 = 0;
int pin5 = 0;
int pin4 = 0;
int pin3 = 0;
int pin2 = 0;
int pin1 = 0;

//IP ja Mac osoitteet
static uint8_t mymac[6] = {0x54,0x55,0x58,0x10,0x00,0x25}; 
static uint8_t myip[4] = {10,10,10,54};

#define MYWWWPORT 80
#define BUFFER_SIZE 750
static uint8_t buf[BUFFER_SIZE+1];

// The ethernet shield
EtherShield es=EtherShield();

uint16_t http200ok(void)
{
  return(es.ES_fill_tcp_data_p(buf,0,PSTR("HTTP/1.0 200 OK\r\nContent-Type: text/html\r\nPragma: no-cache\r\n\r\n")));
}

// Releiden tila kyselyt 
uint16_t print_webpageRele1(uint8_t *buf)
{
  uint16_t plen;
  char vstr[5];
  plen=http200ok();
  itoa(pin5,vstr,10);
  plen=es.ES_fill_tcp_data(buf,plen,vstr);
  return(plen);
}
uint16_t print_webpageRele2(uint8_t *buf)
{
  uint16_t plen;
  char vstr[5];
  plen=http200ok();
  itoa(pin4,vstr,10);
  plen=es.ES_fill_tcp_data(buf,plen,vstr);
  return(plen);
}
uint16_t print_webpageRele3(uint8_t *buf)
{
  uint16_t plen;
  char vstr[5];
  plen=http200ok();
  itoa(pin3,vstr,10);
  plen=es.ES_fill_tcp_data(buf,plen,vstr);
  return(plen);
}
uint16_t print_webpageRele4(uint8_t *buf)
{
  uint16_t plen;
  char vstr[5];
  plen=http200ok();
  itoa(pin2,vstr,10);
  plen=es.ES_fill_tcp_data(buf,plen,vstr);
  return(plen);
}
uint16_t print_webpageRele5(uint8_t *buf)
{
  uint16_t plen;
  char vstr[5];
  plen=http200ok();
  itoa(pin1,vstr,10);
  plen=es.ES_fill_tcp_data(buf,plen,vstr);
  return(plen);
}
uint16_t print_webpageRele6(uint8_t *buf)
{
  uint16_t plen;
  char vstr[5];
  plen=http200ok();
  itoa(pin6,vstr,10);
  plen=es.ES_fill_tcp_data(buf,plen,vstr);
  return(plen);
}
uint16_t print_webpageRele7(uint8_t *buf)
{
  uint16_t plen;
  char vstr[5];
  plen=http200ok();
  itoa(pin7,vstr,10);
  plen=es.ES_fill_tcp_data(buf,plen,vstr);
  return(plen);
}
uint16_t print_webpageRele8(uint8_t *buf)
{
  uint16_t plen;
  char vstr[5];
  plen=http200ok();
  itoa(pin8,vstr,10);
  plen=es.ES_fill_tcp_data(buf,plen,vstr);
  return(plen);
}
uint16_t print_webpageRele9(uint8_t *buf)
{
  uint16_t plen;
  char vstr[5];
  plen=http200ok();
  itoa(pin9,vstr,10);
  plen=es.ES_fill_tcp_data(buf,plen,vstr);
  return(plen);
}
uint16_t print_webpageReleA(uint8_t *buf)
{
  uint16_t plen;
  char vstr[5];
  plen=http200ok();
  itoa(pinA,vstr,10);
  plen=es.ES_fill_tcp_data(buf,plen,vstr);
  return(plen);
}
uint16_t print_webpageReleB(uint8_t *buf)
{
  uint16_t plen;
  char vstr[5];
  plen=http200ok();
  itoa(pinB,vstr,10);
  plen=es.ES_fill_tcp_data(buf,plen,vstr);
  return(plen);
}
uint16_t print_webpageReleC(uint8_t *buf)
{
  uint16_t plen;
  char vstr[5];
  plen=http200ok();
  itoa(pinC,vstr,10);
  plen=es.ES_fill_tcp_data(buf,plen,vstr);
  return(plen);
}
//Releet vetää 0-> 1 Led syttyy
uint16_t print_webpage1(uint8_t *buf)
{
  uint16_t plen;
  plen=http200ok();
  plen=es.ES_fill_tcp_data_p(buf,plen,PSTR("<html><head><title>Soittila 18</title></head><body>"));
  plen=es.ES_fill_tcp_data_p(buf,plen,PSTR("<center><h1>Rele1 ON</h1>"));
  plen=es.ES_fill_tcp_data_p(buf,plen,PSTR("</center>"));
  plen=es.ES_fill_tcp_data_p(buf,plen,PSTR("</body></html>"));
  digitalWrite(A5, HIGH);
  return(plen);
}
uint16_t print_webpage2(uint8_t *buf)
{
  uint16_t plen;
  plen=http200ok();
  plen=es.ES_fill_tcp_data_p(buf,plen,PSTR("<html><head><title>Soittila 18</title></head><body>"));
  plen=es.ES_fill_tcp_data_p(buf,plen,PSTR("<center><h1>Rele2 ON</h1>"));
  plen=es.ES_fill_tcp_data_p(buf,plen,PSTR("</center>"));
  plen=es.ES_fill_tcp_data_p(buf,plen,PSTR("</body></html>"));
  digitalWrite(A4, HIGH);
  return(plen);
}
uint16_t print_webpage3(uint8_t *buf)
{
  uint16_t plen;
  plen=http200ok();
  plen=es.ES_fill_tcp_data_p(buf,plen,PSTR("<html><head><title>Soittila 18</title></head><body>"));
  plen=es.ES_fill_tcp_data_p(buf,plen,PSTR("<center><h1>Rele3 ON</h1>"));
  plen=es.ES_fill_tcp_data_p(buf,plen,PSTR("</center>"));
  plen=es.ES_fill_tcp_data_p(buf,plen,PSTR("</body></html>"));
  digitalWrite(A3, HIGH);
  return(plen);
}
uint16_t print_webpage4(uint8_t *buf)
{
  uint16_t plen;
  plen=http200ok();
  plen=es.ES_fill_tcp_data_p(buf,plen,PSTR("<html><head><title>Soittila 18</title></head><body>"));
  plen=es.ES_fill_tcp_data_p(buf,plen,PSTR("<center><h1>Rele4 ON</h1>"));
  plen=es.ES_fill_tcp_data_p(buf,plen,PSTR("</center>"));
  plen=es.ES_fill_tcp_data_p(buf,plen,PSTR("</body></html>"));
   digitalWrite(A2, HIGH);
  return(plen);
}
uint16_t print_webpage5(uint8_t *buf)
{
  uint16_t plen;
  plen=http200ok();
  plen=es.ES_fill_tcp_data_p(buf,plen,PSTR("<html><head><title>Soittila 18</title></head><body>"));
  plen=es.ES_fill_tcp_data_p(buf,plen,PSTR("<center><h1>Rele5 ON</h1>"));
  plen=es.ES_fill_tcp_data_p(buf,plen,PSTR("</center>"));
  plen=es.ES_fill_tcp_data_p(buf,plen,PSTR("</body></html>"));
   digitalWrite(A1, HIGH);
  return(plen);
}
uint16_t print_webpage6(uint8_t *buf)
{
  uint16_t plen;
  plen=http200ok();
  plen=es.ES_fill_tcp_data_p(buf,plen,PSTR("<html><head><title>Soittila 18</title></head><body>"));
  plen=es.ES_fill_tcp_data_p(buf,plen,PSTR("<center><h1>Rele6 ON</h1>"));
  plen=es.ES_fill_tcp_data_p(buf,plen,PSTR("</center>"));
  plen=es.ES_fill_tcp_data_p(buf,plen,PSTR("</body></html>"));
   digitalWrite(A0, HIGH);
  return(plen);
}
uint16_t print_webpage7(uint8_t *buf)
{
  uint16_t plen;
  plen=http200ok();
  plen=es.ES_fill_tcp_data_p(buf,plen,PSTR("<html><head><title>Soittila 18</title></head><body>"));
  plen=es.ES_fill_tcp_data_p(buf,plen,PSTR("<center><h1>Rele7 ON</h1>"));
  plen=es.ES_fill_tcp_data_p(buf,plen,PSTR("</center>"));
  plen=es.ES_fill_tcp_data_p(buf,plen,PSTR("</body></html>"));
   digitalWrite(3, HIGH);
  return(plen);
}
uint16_t print_webpage8(uint8_t *buf)
{
  uint16_t plen;
  plen=http200ok();
  plen=es.ES_fill_tcp_data_p(buf,plen,PSTR("<html><head><title>Soittila 18</title></head><body>"));
  plen=es.ES_fill_tcp_data_p(buf,plen,PSTR("<center><h1>Rele8 ON</h1>"));
  plen=es.ES_fill_tcp_data_p(buf,plen,PSTR("</center>"));
  plen=es.ES_fill_tcp_data_p(buf,plen,PSTR("</body></html>"));
   digitalWrite(4, HIGH);
  return(plen);
}
uint16_t print_webpage9(uint8_t *buf)
{
  uint16_t plen;
  plen=http200ok();
  plen=es.ES_fill_tcp_data_p(buf,plen,PSTR("<html><head><title>Soittila 18</title></head><body>"));
  plen=es.ES_fill_tcp_data_p(buf,plen,PSTR("<center><h1>Rele9 ON</h1>"));
  plen=es.ES_fill_tcp_data_p(buf,plen,PSTR("</center>"));
  plen=es.ES_fill_tcp_data_p(buf,plen,PSTR("</body></html>"));
   digitalWrite(5, HIGH);
  return(plen);
}
uint16_t print_webpageA(uint8_t *buf)
{
  uint16_t plen;
  plen=http200ok();
  plen=es.ES_fill_tcp_data_p(buf,plen,PSTR("<html><head><title>Soittila 18</title></head><body>"));
  plen=es.ES_fill_tcp_data_p(buf,plen,PSTR("<center><h1>Rele10 ON</h1>"));
  plen=es.ES_fill_tcp_data_p(buf,plen,PSTR("</center>"));
  plen=es.ES_fill_tcp_data_p(buf,plen,PSTR("</body></html>"));
   digitalWrite(6, HIGH);
  return(plen);
}
uint16_t print_webpageB(uint8_t *buf)
{
  uint16_t plen;
  plen=http200ok();
  plen=es.ES_fill_tcp_data_p(buf,plen,PSTR("<html><head><title>Soittila 18</title></head><body>"));
  plen=es.ES_fill_tcp_data_p(buf,plen,PSTR("<center><h1>Rele11 ON</h1>"));
  plen=es.ES_fill_tcp_data_p(buf,plen,PSTR("</center>"));
  plen=es.ES_fill_tcp_data_p(buf,plen,PSTR("</body></html>"));
   digitalWrite(7, HIGH);
  return(plen);
}
uint16_t print_webpageC(uint8_t *buf)
{
  uint16_t plen;
  plen=http200ok();
  plen=es.ES_fill_tcp_data_p(buf,plen,PSTR("<html><head><title>Soittila 18</title></head><body>"));
  plen=es.ES_fill_tcp_data_p(buf,plen,PSTR("<center><h1>Rele12 ON</h1>"));
  plen=es.ES_fill_tcp_data_p(buf,plen,PSTR("</center>"));
  plen=es.ES_fill_tcp_data_p(buf,plen,PSTR("</body></html>"));
   digitalWrite(8, HIGH);
  return(plen);
}

uint16_t print_webpage11(uint8_t *buf)
{
  uint16_t plen;
  plen=http200ok();
  plen=es.ES_fill_tcp_data_p(buf,plen,PSTR("<html><head><title>Soittila 18</title></head><body>"));
  plen=es.ES_fill_tcp_data_p(buf,plen,PSTR("<center><h1>Rele1 off</h1>"));
  plen=es.ES_fill_tcp_data_p(buf,plen,PSTR("</center>"));
  plen=es.ES_fill_tcp_data_p(buf,plen,PSTR("</body></html>"));
  digitalWrite(A5, LOW);
  return(plen);
}
uint16_t print_webpage12(uint8_t *buf)
{
  uint16_t plen;
  plen=http200ok();
  plen=es.ES_fill_tcp_data_p(buf,plen,PSTR("<html><head><title>Soittila 18</title></head><body>"));
  plen=es.ES_fill_tcp_data_p(buf,plen,PSTR("<center><h1>Rele2 off</h1>"));
  plen=es.ES_fill_tcp_data_p(buf,plen,PSTR("</center>"));
  plen=es.ES_fill_tcp_data_p(buf,plen,PSTR("</body></html>"));
  digitalWrite(A4, LOW);
  return(plen);
}
uint16_t print_webpage13(uint8_t *buf)
{
  uint16_t plen;
  plen=http200ok();
  plen=es.ES_fill_tcp_data_p(buf,plen,PSTR("<html><head><title>Soittila 18</title></head><body>"));
  plen=es.ES_fill_tcp_data_p(buf,plen,PSTR("<center><h1>Rele3 off</h1>"));
  plen=es.ES_fill_tcp_data_p(buf,plen,PSTR("</center>"));
  plen=es.ES_fill_tcp_data_p(buf,plen,PSTR("</body></html>"));
  digitalWrite(A3, LOW);
  return(plen);
}
uint16_t print_webpage14(uint8_t *buf)
{
  uint16_t plen;
  plen=http200ok();
  plen=es.ES_fill_tcp_data_p(buf,plen,PSTR("<html><head><title>Soittila 18</title></head><body>"));
  plen=es.ES_fill_tcp_data_p(buf,plen,PSTR("<center><h1>Rele4 off</h1>"));
  plen=es.ES_fill_tcp_data_p(buf,plen,PSTR("</center>"));
  plen=es.ES_fill_tcp_data_p(buf,plen,PSTR("</body></html>"));
   digitalWrite(A2, LOW);
  return(plen);
}
uint16_t print_webpage15(uint8_t *buf)
{
  uint16_t plen;
  plen=http200ok();
  plen=es.ES_fill_tcp_data_p(buf,plen,PSTR("<html><head><title>Soittila 18</title></head><body>"));
  plen=es.ES_fill_tcp_data_p(buf,plen,PSTR("<center><h1>Rele5 off</h1>"));
  plen=es.ES_fill_tcp_data_p(buf,plen,PSTR("</center>"));
  plen=es.ES_fill_tcp_data_p(buf,plen,PSTR("</body></html>"));
   digitalWrite(A1, LOW);
  return(plen);
}
uint16_t print_webpage16(uint8_t *buf)
{
  uint16_t plen;
  plen=http200ok();
  plen=es.ES_fill_tcp_data_p(buf,plen,PSTR("<html><head><title>Soittila 18</title></head><body>"));
  plen=es.ES_fill_tcp_data_p(buf,plen,PSTR("<center><h1>Rele6 off</h1>"));
  plen=es.ES_fill_tcp_data_p(buf,plen,PSTR("</center>"));
  plen=es.ES_fill_tcp_data_p(buf,plen,PSTR("</body></html>"));
   digitalWrite(A0, LOW);
  return(plen);
}
uint16_t print_webpage17(uint8_t *buf)
{
  uint16_t plen;
  plen=http200ok();
  plen=es.ES_fill_tcp_data_p(buf,plen,PSTR("<html><head><title>Soittila 18</title></head><body>"));
  plen=es.ES_fill_tcp_data_p(buf,plen,PSTR("<center><h1>Rele7 off</h1>"));
  plen=es.ES_fill_tcp_data_p(buf,plen,PSTR("</center>"));
  plen=es.ES_fill_tcp_data_p(buf,plen,PSTR("</body></html>"));
   digitalWrite(3, LOW);
  return(plen);
}
uint16_t print_webpage18(uint8_t *buf)
{
  uint16_t plen;
  plen=http200ok();
  plen=es.ES_fill_tcp_data_p(buf,plen,PSTR("<html><head><title>Soittila 18</title></head><body>"));
  plen=es.ES_fill_tcp_data_p(buf,plen,PSTR("<center><h1>Rele8 off</h1>"));
  plen=es.ES_fill_tcp_data_p(buf,plen,PSTR("</center>"));
  plen=es.ES_fill_tcp_data_p(buf,plen,PSTR("</body></html>"));
   digitalWrite(4, LOW);
  return(plen);
}
uint16_t print_webpage19(uint8_t *buf)
{
  uint16_t plen;
  plen=http200ok();
  plen=es.ES_fill_tcp_data_p(buf,plen,PSTR("<html><head><title>Soittila 18</title></head><body>"));
  plen=es.ES_fill_tcp_data_p(buf,plen,PSTR("<center><h1>Rele9 off</h1>"));
  plen=es.ES_fill_tcp_data_p(buf,plen,PSTR("</center>"));
  plen=es.ES_fill_tcp_data_p(buf,plen,PSTR("</body></html>"));
   digitalWrite(5, LOW);
  return(plen);
}
uint16_t print_webpage20(uint8_t *buf)
{
  uint16_t plen;
  plen=http200ok();
  plen=es.ES_fill_tcp_data_p(buf,plen,PSTR("<html><head><title>Soittila 18</title></head><body>"));
  plen=es.ES_fill_tcp_data_p(buf,plen,PSTR("<center><h1>Rele10 off</h1>"));
  plen=es.ES_fill_tcp_data_p(buf,plen,PSTR("</center>"));
  plen=es.ES_fill_tcp_data_p(buf,plen,PSTR("</body></html>"));
   digitalWrite(6, LOW);
  return(plen);
}
uint16_t print_webpage21(uint8_t *buf)
{
  uint16_t plen;
  plen=http200ok();
  plen=es.ES_fill_tcp_data_p(buf,plen,PSTR("<html><head><title>Soittila 18</title></head><body>"));
  plen=es.ES_fill_tcp_data_p(buf,plen,PSTR("<center><h1>Rele11 off</h1>"));
  plen=es.ES_fill_tcp_data_p(buf,plen,PSTR("</center>"));
  plen=es.ES_fill_tcp_data_p(buf,plen,PSTR("</body></html>"));
   digitalWrite(7, LOW);
  return(plen);
}
uint16_t print_webpage22(uint8_t *buf)
{
  uint16_t plen;
  plen=http200ok();
  plen=es.ES_fill_tcp_data_p(buf,plen,PSTR("<html><head><title>Soittila 18</title></head><body>"));
  plen=es.ES_fill_tcp_data_p(buf,plen,PSTR("<center><h1>Rele12 off</h1>"));
  plen=es.ES_fill_tcp_data_p(buf,plen,PSTR("</center>"));
  plen=es.ES_fill_tcp_data_p(buf,plen,PSTR("</body></html>"));
   digitalWrite(8, LOW);
  return(plen);
}


void setup(){  
  pinMode(A5, OUTPUT);
  pinMode(A4, OUTPUT);
  pinMode(A3, OUTPUT);
  pinMode(A2, OUTPUT);
  pinMode(A1, OUTPUT);
  pinMode(A0, OUTPUT);
  pinMode(8, OUTPUT);
  pinMode(7, OUTPUT);
  pinMode(6, OUTPUT);
  pinMode(5, OUTPUT);
  pinMode(4, OUTPUT);
  pinMode(3, OUTPUT);
  
  // Initialise SPI interface
  es.ES_enc28j60SpiInit();

  // initialize enc28j60
  es.ES_enc28j60Init(mymac);

  // init the ethernet/ip layer:
  es.ES_init_ip_arp_udp_tcp(mymac,myip, MYWWWPORT);
}

void loop(){
  uint16_t plen, dat_p;

  while(1) {
    // read packet, handle ping and wait for a tcp packet:
    dat_p=es.ES_packetloop_icmp_tcp(buf,es.ES_enc28j60PacketReceive(BUFFER_SIZE, buf));

    /* dat_p will be unequal to zero if there is a valid 
     * http get */
    if(dat_p==0){
      // no http request
      continue;
    }
    // tcp port 80 begin
    if (strncmp("GET ",(char *)&(buf[dat_p]),4)!=0){
      // head, post and other methods:
      dat_p=http200ok();
      dat_p=es.ES_fill_tcp_data_p(buf,dat_p,PSTR("<h1>201 OK</h1>"));
      goto SENDTCP;
    }
    // 
    if (strncmp("/on/1 ",(char *)&(buf[dat_p+4]),5)==0){
      dat_p=print_webpage1(buf);
      goto SENDTCP;
    }
    if (strncmp("/on/2 ",(char *)&(buf[dat_p+4]),5)==0){
      dat_p=print_webpage2(buf);
      goto SENDTCP;
    }
    if (strncmp("/on/3 ",(char *)&(buf[dat_p+4]),5)==0){
      dat_p=print_webpage3(buf);
      goto SENDTCP;
    }
    if (strncmp("/on/4 ",(char *)&(buf[dat_p+4]),5)==0){
      dat_p=print_webpage4(buf);
      goto SENDTCP;
    }
    if (strncmp("/on/5 ",(char *)&(buf[dat_p+4]),5)==0){
      dat_p=print_webpage5(buf);
      goto SENDTCP;
    }
    if (strncmp("/on/6 ",(char *)&(buf[dat_p+4]),5)==0){
      dat_p=print_webpage6(buf);
      goto SENDTCP;
    }
    if (strncmp("/on/7 ",(char *)&(buf[dat_p+4]),5)==0){
      dat_p=print_webpage7(buf);
      goto SENDTCP;
    }
    if (strncmp("/on/8 ",(char *)&(buf[dat_p+4]),5)==0){
      dat_p=print_webpage8(buf);
      goto SENDTCP;
    }
    if (strncmp("/on/9 ",(char *)&(buf[dat_p+4]),5)==0){
      dat_p=print_webpage9(buf);
      goto SENDTCP;
    }
    if (strncmp("/on/A ",(char *)&(buf[dat_p+4]),5)==0){
      dat_p=print_webpageA(buf);
      goto SENDTCP;
    }
    if (strncmp("/on/B ",(char *)&(buf[dat_p+4]),5)==0){
      dat_p=print_webpageB(buf);
      goto SENDTCP;
    }
    if (strncmp("/on/C ",(char *)&(buf[dat_p+4]),5)==0){
      dat_p=print_webpageC(buf);
      goto SENDTCP;
    }    
    if (strncmp("/off/1 ",(char *)&(buf[dat_p+4]),6)==0){
      dat_p=print_webpage11(buf);
      goto SENDTCP;
    }
    if (strncmp("/off/2 ",(char *)&(buf[dat_p+4]),6)==0){
      dat_p=print_webpage12(buf);
      goto SENDTCP;
    }
    if (strncmp("/off/3 ",(char *)&(buf[dat_p+4]),6)==0){
      dat_p=print_webpage13(buf);
      goto SENDTCP;
    }
    if (strncmp("/off/4 ",(char *)&(buf[dat_p+4]),6)==0){
      dat_p=print_webpage14(buf);
      goto SENDTCP;
    }
    if (strncmp("/off/5 ",(char *)&(buf[dat_p+4]),6)==0){
      dat_p=print_webpage15(buf);
      goto SENDTCP;
    }
    if (strncmp("/off/6 ",(char *)&(buf[dat_p+4]),6)==0){
      dat_p=print_webpage16(buf);
      goto SENDTCP;
    }
    if (strncmp("/off/7 ",(char *)&(buf[dat_p+4]),6)==0){
      dat_p=print_webpage17(buf);
      goto SENDTCP;
    }
    if (strncmp("/off/8 ",(char *)&(buf[dat_p+4]),6)==0){
      dat_p=print_webpage18(buf);
      goto SENDTCP;
    }
    if (strncmp("/off/9 ",(char *)&(buf[dat_p+4]),6)==0){
      dat_p=print_webpage19(buf);
      goto SENDTCP;
    }
    if (strncmp("/off/A ",(char *)&(buf[dat_p+4]),6)==0){
      dat_p=print_webpage20(buf);
      goto SENDTCP;
    }
    if (strncmp("/off/B ",(char *)&(buf[dat_p+4]),6)==0){
      dat_p=print_webpage21(buf);
      goto SENDTCP;
    }
    if (strncmp("/off/C ",(char *)&(buf[dat_p+4]),6)==0){
      dat_p=print_webpage22(buf);
      goto SENDTCP;
    }    
    if (strncmp("/rele/1 ",(char *)&(buf[dat_p+4]),7)==0){
      pin5 = analogRead(5);
      dat_p=print_webpageRele1(buf);
      goto SENDTCP;
    }
    if (strncmp("/rele/2 ",(char *)&(buf[dat_p+4]),7)==0){
      pin4= analogRead(4);
      dat_p=print_webpageRele2(buf);
      goto SENDTCP;
    }
    if (strncmp("/rele/3 ",(char *)&(buf[dat_p+4]),7)==0){
      pin3 = analogRead(3);
      dat_p=print_webpageRele3(buf);
      goto SENDTCP;
    }
    if (strncmp("/rele/4 ",(char *)&(buf[dat_p+4]),7)==0){
      pin2 = analogRead(2);
      dat_p=print_webpageRele4(buf);
      goto SENDTCP;
    }  
    if (strncmp("/rele/5 ",(char *)&(buf[dat_p+4]),7)==0){
      pin1 = analogRead(1);
      dat_p=print_webpageRele5(buf);
      goto SENDTCP;
    }
    if (strncmp("/rele/6 ",(char *)&(buf[dat_p+4]),7)==0){
      pin6 = analogRead(0);
      dat_p=print_webpageRele6(buf);
      goto SENDTCP;
    }
    if (strncmp("/rele/7 ",(char *)&(buf[dat_p+4]),7)==0){
      pin7 = digitalRead(3);
      dat_p=print_webpageRele7(buf);
      goto SENDTCP;
    }
    if (strncmp("/rele/8 ",(char *)&(buf[dat_p+4]),7)==0){
      pin8 = digitalRead(4);
      dat_p=print_webpageRele8(buf);
      goto SENDTCP;
    }
    if (strncmp("/rele/9 ",(char *)&(buf[dat_p+4]),7)==0){
      pin9 = digitalRead(5);
      dat_p=print_webpageRele9(buf);
      goto SENDTCP;
    }
    if (strncmp("/rele/A ",(char *)&(buf[dat_p+4]),8)==0){
      pinA = digitalRead(6);
      dat_p=print_webpageReleA(buf);
      goto SENDTCP;
    }
    if (strncmp("/rele/B ",(char *)&(buf[dat_p+4]),8)==0){
      pinB = digitalRead(7);
      dat_p=print_webpageReleB(buf);
      goto SENDTCP;
    }
    if (strncmp("/rele/C ",(char *)&(buf[dat_p+4]),8)==0){
      pinC = digitalRead(8);
      dat_p=print_webpageReleC(buf);
      goto SENDTCP;
    }    
    else{
      dat_p=es.ES_fill_tcp_data_p(buf,0,PSTR("HTTP/1.0 401 Unauthorized\r\nContent-Type: text/html\r\n\r\n<h1>401 Unauthorized</h1>"));
      goto SENDTCP;
    }
SENDTCP:
    es.ES_www_server_reply(buf,dat_p); // send web page data
    // tcp port 80 end

  }

}