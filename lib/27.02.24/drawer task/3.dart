import 'package:flutter/material.dart';

class drawer3 extends StatelessWidget {
  const drawer3({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown.shade600,
          title: Text("Drawer 3"),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(accountName: Text("Vaishnav AP",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                  accountEmail:Text("vaishnv123@gmail.com",style: TextStyle(color: Colors.white),),
                currentAccountPicture: CircleAvatar(
                  child: ClipOval(child: Image.network("data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBUVFRgWFRIYFRgaGBoYGhgZGBgcGBgaHBgZGRkYGBgcIS4lHB4rHxgYJjgmKy8xNTU1GiQ7QDszPy40NTEBDAwMEA8QHBISGDEhISsxPzQ3MTQ0MTQ0NDQ0OjQxPTY0MTE0NDQ0NDQxMTU0NDQ0NDQ0NDQ0MTQ0NDQ0NDQ0NP/AABEIAOMA3gMBIgACEQEDEQH/xAAcAAADAAMBAQEAAAAAAAAAAAAAAQIFBgcDBAj/xABFEAABAgMECAMGAwcCBAcAAAABAAIDESEEEjFBBQYiMlFhcYEHE5FCUmKhsdHB8PEjJHKCkqLCFFNjstLhM0NEZHODs//EABgBAQEBAQEAAAAAAAAAAAAAAAABAgME/8QAIhEBAQACAgMBAAMBAQAAAAAAAAECEQMSITFBYSIyUfAE/9oADAMBAAIRAxEAPwDr7nXqDrVDXSEjj90OAFRj6oa0ETOKBNF2p+SC2ZvZY86IYb299kEmchh+GdUA7awy4p3qXc8OSTtnd75p3RKeePfogTTdxz4IDZG9ljzqhu1vfZAJJkcPzKqAc29UdKpudeoMUnG7QYeqbgBVuKAa67QpNbdqelE2gGrsUSJ3qoEWzN7L50Q7awy4qgMsuCbWgYJsTepdzw5JN2cc+CosE55oInjVTZpIbI3ssedUOF6o+acjh7KTzdwVDc6YkMfshpu0PWiHNAExihoBqcfRAmtu1PSiC2ZvDD7IaSaOw9EOJBkMEDcb1B80AyF3PDlX9UOF3d+6AARM4/mVECbs458EXa3sseaG7W99kTM5ZYduqAcL2GXFUIoFK0opds7v3T8tpqceqBBt2prkgtvbX5ohpJ3sOdEEmezh8udUA43qCiJy2e3r+qbpDdx5VQJSmd75zyogQ2cazTu+13SbXe7TolMzl7Pyl1QNwvYUkgumLvafRVd4GQTDUChiQkmGgYJoUUIRJCKQTQhECEIQCgq1LgsqgGRmh20eCCElZTSy69QUzQHS2fzVSPRU0CUzj+ZLTJBt2prkgtntd/T9ENrvYc6JEmchu/KWdUDO1hSSd72eyTqbveVU5CU/a+c+iBA3cazS8kms8aptrvdp0SvOynLKmSB3r1MM0Xruzjz6pul7OPLggSltY/PkgUrtcckXZ7XeXT9EN+LDmkZzpu/KWaB73KSoGklLiMv1QCgsJlSqUUBBSCaAQta1q1vg2JoDv2kU4QmuAMq7TjW62ksJnIYy55pbxItkWQhBtmAxu3XvdyLntkB0aEV1C1az2OG90J9pY17TJzSTsmQMiZSFCD3RpDWSzQIbIr4l6G83Q+G10Rk+BcwEDGk8clwy36Xj2gh0eJ5jmiQcWQw6XAua0EjkUrHa3wyTDeW3hJ7aFj2+69h2XN5OBU2ad70XpuzWgTgRmRCBMtBk8Di5jpOA6hZC9Ptjy6r85COWvDmThuBvNLHOBYfgdO8M858yslatOPeRHvOhWpt0GND2fPaJACK1tL7aVwc0EEUE2zTviFz3RPiM0wA6PCc57CGxCy7umjYoa4ihOyQDQke8FuujNJQrRDbFgvD2uzFCDmHA1a4cCoPqcFKsqSEEppIWh6O2qYKb0tntPr+qkFWJS58eeSIW7zmi77XeSG/F2mis/h+UlUEr3KSPOlSWFEO+HvJUC3OU8+qCS27XHJAbe2vzRDQRvYeqTgSZjD8zogc71ME5yok4g7vfJOSCUwghCinJUFITQUuX+JGu9z92ssYXtoRokMm8wggeW14oHb14gzEpUK2HxH1lNis0mOlHiksh8WiW3El8IIl8TmrgjeZJ61Pc5pSPpDhU5kkk5kmpJ4lW144r55ph4GJkstPpJQx6IVjivqyBEfPNrHuHqAvpZoK1H/0sb+hw+oTc/wBNX/HnfVNK+kaDtIxssb+h5+gXhFsz2b8N7P42ub9QpuGqGFZHQ2mY1kiCJBcRUX2TNx4914+hxGSxrSmXKj9D6L0iy0QmxYZm14mOIIJDmkcQQR2X0kLSPCq1B1mey9NzIpN3MMc1sjLgXB/oVvCIghIq3BRJABUEkLQoi9jSSL/s9pqVUxKXtfj1VZIm7zmn5U6zxqk2m92zSLTlhlVA2uvUPWiL0jdGH3Te69QIY6WycUBdANEBKSZUUypVNKTggAmkEwEHCPFnSRiaQcwbsFjIY/icPMcf72j+Rae2ZWV1tj37dan/APuIjezHlg+TAvi0XZDGjQ4QoXva2fAe04dGhx7KWrIzurGqjrTtxHFkGcpjfeRQhk6AA4uM+EuHQtHaEs8Afs4LWn3iLzz1e6bvmslAgNY1rGNDWtAa0DAACQC9A1ePLO2/j2Y4ST9eQCtrF6BiZcAsNmEGokajgcFM0IjC6S1Xs0WZ8sQ3+/Dk2vNu6fSfNaHpzQUSzOF/aYTJr2ih5Eey7l6TXWJL57XZWRWOhvF5rhIj6EcCDUHkumHJZ79OefHL69uWaE0m+zRWxYbpObiMnt9pjhmDL6HEBd9gxWva17Tea5oc0jMETB9Cvz3brI6DFfDdixxbPjwd3Ej3XVPDLSD4lmcx4JEJ9xj5ioIv3JTnNs+kiBkV6o81jc0imkiEUIKSBphoxzCkFU0qypQBexy4JeaRSlKJv2sMlQiAU4LSE9sqjFDa1OKTW3anpRVenVAiEIKaigKkpIkgSoIQEH5k00yVptIOP+oj/wD6vWU1Bgh1uYT7LXuHW4W/5FeWukC5b7U3/jPd/XKJ/msj4cQC61OdKjITiTwLnNAHfa9FjP8ArW8PcdPmi8i4iS8T2E5yQCpUikAmCvMlS40QexekCvCHHYTLzGz4XhP6r3wRHOtd4crWSPaYxx9C3/ELc/CYfu8f/wCb/Bi1PXkfvLecJn/O9bl4WslZojuMd3yZDXrw/rHkz/tW6FCSFtkEJFUCkURKYQQhAE3cM8VflA1KlrwEvKJrStVuMm0k72HOiZ5JF16mGaJKBqgomqCKpCEggaEIQcD8ToV3SccylfbCeOY8pjJ+rD6LI6vaRgWCyF7nsfHiyfca4FwHsNeRuAAlxnXaIX2+L9kDrVZi0SdEZ5ZdWRN8XAel9x6Hkjwu0KwvjxYjA58KJ5TQRMMcAS9wB9rATykeK55Tt4dMb1m2AjwtI2w3jAjxGmoAY5kMDK6DJvep5leZ1Zt7K/6KKJZtAJ9GEldxBPX6qwtTHTNy24pojWC0WaI1kVz7swHMjXgWgmU5v2md6LfLTrBZWG660sB4B14jrdnJZrWPQ0O1QXMiNE5G4+W0x0qOacq4jAihXMtRtAWe0wHRYrHPN8sDb7mtaAxjpi4QSdrM5Ljy4Sea7ceVviNo0nrDBZAfEhRob3CQaLwJmT7uMwJmXJaPK02szbDj2iuIa4sB4AjZb0ostojV6A7SjrMQXQmM8244zvbLCGE5tvPHUNkZrqzAGgAANAEgAJNA4AZK8eE1uJyZ+dOOt1atwEzYX/1Mn6AzX0WLS8exuDY0KKxhMrj2OA/kLs+lF2Ca848Jj2Fj2NexwkWuALXDgQV0yw3NOUz1duSa82qHEMCLCiMeC1zHXSJiRDm3m4jedit48LW/uV73ozz6BrPq0rmOntEiDHtTWbkF7ZTJJAeRcbPOV7E8F1/UJgbYYDQ26Q0kjm5xeT3vg91nHxNNZ+btn0JlKS2wEIQgZUyVIKBNAOKRccpyyondnRPzZUlhRaiUOl7OPJOSm7drjkqnNVEyTmhE1FOaAUJILQpmhBzLxShO86ymRkbVAHYzH1BX0atRRB0ha7OdkRrtoh/EZHzJc5kn+QrO66WERX2UEyuRRE6mG5jg3usPp3RBj3Hw3+XHhG9Dfz913Fp+9CCQfPln1yejHHth/wB8biCvSa0mFrwIUmW6zvgPFL7G34T+bSDPsL0uK9neIVhwhviRn5MhwX33HgA4AfNdplL5243DKfGU1y0wLLZIsSYDnNLIfOI8ENpnKrjyaVr2qdgNnsrGOEnum9w4F2DTzDbo7JNsUa2R22m1s8tkOsCzTndPvxTgX0BlyApIzzjgvNzZ9vEenhw6+a1PSEQ2XSEC1mkN48mIcmzBAcTwldd/9ZXSmvBHFaxbrEyMx0N7ZtcJHiMwQciDVYvR+lI1gaIdphvjQW0ZaIbbzmsybFZOYlx6Cq3w8k11rHNhd9o30IiPDQXOIDQCSTgABMk8gFqTvEKwAT817jwbDfP+4AfNYu36UtOkW+WyE+y2V0r730ixWznca0Ua3jiDxlNp7ZZ4yb25Y4ZW60wmlL0ew260tbWNHYWcfLZFY1npecOy6tq+y7BAFAHSHQNaPwWtvsEMwDAAusuXQBkBUGuJmJrbtFsuwmD4QT1O0fquPHl2ydOWdY+khJWoK9DiSEyksgQmEkAZ5KhdzlPPqpLpVR5M6zxqtRKGgjew51VzGSgOvUNM0wJGXBVAhMpFRTSSBVIFNNIhJBidaYDnWd72GT4YdFbnO40kt7yWE0bbWxobXswcKjgRi0rcHsDgWmoIII5ESK4vq5bnWOO+DFP7MPcxxPsuY4tv9KV5dFx5cNzc9u3Fnq6vp0FzQRIiakBjATssAxNGgdSvUD9VzDTGmn2h5mSGAm43IDIni6Wa4YY213yy1G52rWmzMmA9zz8DZ/MyB7L4Ha5Qf9uJ/Z/1LB2HVm0RBeLQwH3yQT/KAT6gLIDU1/8Aus9HLfXjnusds76j7oet8A4w4g/lYf8AJZOx6ZgRaMiC97pm13YHHstYi6nxQNmIw9bw/ArX7dZY1ncBEhls8HYtd0cKT5Yp0wvqnfKe46j5YnO6J8ZCfqrJWB1R0k6Kx7Xm8WFsicS1wMgTnItNVlbXamQ2Oe8ya2p58AOJK5ZY2XTrjlLNvSJHF5kOe1FcGNHI7zugEz6Lc2iQkOi5XqZEfatIec8Uhse8DJolcY3+8nmQSuqNXq4sOs/Xk5c+1/FhBCQVLq5oKSopFZUk0IQAIz+im67Kcsq5JtaHdkvOIpLCi1GapzgaDH0SBkJHFNzbtR0qhrZiZx+yoaRCGOmgqKSYKSYQWoIVBBCCFyTxG0f5dqL2jZitD+V4bLh6gH+ZdcK1fX7RJtFmLmib4RL2gYlstto7V6sClWOc6va1Ps5EOJN8LL32fwzxb8PpwPy6DDHW2GAbzBFN0kYyvGGZHmGrXbQ7GSLJai1wIJBBBBGIIMwRzmAsdZ519b7Xxv47iQvNxWG0BrGy0tDXEMiDFuAd8TPtiPmvLTugHx4ge17RshpDp0kSZiXVeTrq6y8PV23N4+WccsFrm0f6V08b8O7/ABXhOXO7eWXssJsGE1rngNYwAucQ0UFSScFpGtWnmxnhjKsZOR952Bd0yHfitceO8vCcmWsfL5dAaZZZWRC4F73lgawUEmh1S7ITdzNMF8Gk9MxY7pvdsjdY2jW9BmeZqsc8Xith1Y1edaojWCYbi93uszPU4AceQK9PWb39ebtda+N98MdGllmdGcJOjOmOPlsmG+ri89CFurSvGDCaxrWMAa1rQ1rRgABID0C9WldHN6BUFDSqBQNwUqipQCCgKZzMuKmlN21u/ZPzGihx6JON3DPiqEIGvGq0ylrbtT0ogtmbww+yGkmjsPRDiQZDBBV+9gkUOF3d+6G4IEUApkJKKoKlDVQQIhIKpIkg4xrnqt5b3xoLf2Zc4uYB/wCHUzIHufTphpRs5nPJdzjvm49T9VqmmtUmRCXwSIbs2ewekt0/LovNjy/K9GXF9jQbO670X1O0pEAk2I8Dk9w+hWQjasWltPKcel130K+caCjjGBE/od9l13jfrn1ynxjzEe87TnOl7xLvqpewhZmHoeNlAf3aR9VkbHqq95nENwcKF59KDv6KXLGfVmOV+Ne0VYXxnhjGzccTk0Zuccgu3au6IZZoDGMqXAOe84ucRjyAwAyHcrXtH6PhwG3IbLs6k4uceLjmtxsTpw2SM9kDuBKSnHn2yq8mHWRaEyFMl2cVtKua8wrCCwUigIKAQX+znhyScSKhOQlP2vx6JEJpu458EjCJrStU27W99ki9www6Kii69QUzQHS2fzVDpDdx5VQJS2sfnyQIC7U1QWz2u/ohtd7DnRIznIbvylnVBTXTQUnU3a8ZVUxYzWNLnua1oE3OcQA0cXE0CirVBaBp/wAU7FAm2DetTx7mzDB5xTiP4Q5cz0/4iW+1Tb5v+nYfYgzbMcHPnfPOoB4IO16wa5WKxzEeOL4/8pm1EPItG71cQOa0nR/ibFtlrZAgQhBhG+XOeb0VwDCRKWyyspip5rjDgspqnpBtntkGI4yaHXXHINcCxzjyAdPsplvrdLjrtNu8tXs1skNaqK8D3ocF5PK9HLzeFFjxcUNCCEKKoVXPfEHTdosdshvs1ofCc6ALwaZtdJ7w28wza7PELosJq4z4j2wRLc8CohtZDHUC870c5w7Lv/55/Jw57/Ftmg/GKI2TbXZmvHvwdl0pZscbrj0LV03QOstltrZ2eO15lMsOzEb/ABMdWXPDmvy8vSFELXBzHFrmmYc0kOB4gioK9byP1oArAXBdXfFO2WeTI4FqYPeN2KByiAbX8wJPFdO0D4hWC0yaI3kPNLkaTDPCTXTuu6B0+SDbmoc7JIupSvT6pgCVd75zyoiENnGs0XPa7obXe7ToiZnL2flLqqBwvYUkn5wFJYUSdTd7yqqAGcp51QTdu1xyRdvbWHLohk/aw58UGc9nD5c0BO9TDPii9LZ7T68u6bpezjyQJSrvfOeSBbvOfZfFpXRUG0wnQ48NsRjhVp+RBFQRkRUL7W/F2mis/h+UkHANcvDuPY70WBej2cVLpTiQx/xGgbTR7wEuIC0dpX63d8PeS0TWvw0stqnEgkWaOaksbOG85l0OkjjtNIxmZoOAOXk5q2XWHVC2WInz4BuZRWTdCPVwGz0cAVr5aorsXhxrKLTBECI79tCaBU1fDEg13MigPY5rcyvzhYbY+DEbFhuLXtN5pGXI8QRMEZgldo1U1wg2xoa4iHHFHQyaOMt6GTiOWI+Z83Lx+dz09XFybmr7bNJeMRexUSXB2jxuKSvZ5WH03pyBZWX4z5GWwwSL3/wt4czQKSW3ULZJur0/plljgOiukSKMZOr3kbLRyzJyAK4LHiue5z3G857i5x4uJmT6krJ6xadi2yL5kSjRMMYDssbwHEmk3Z8gABigF7eLDpP14+TPtfwIBTC3TVvw0ttrk5zf9NCPtxGkOP8ABCo4/wA10VoSujm1CDDc9wa1pc5xAa1oJc4nANAqTyC6zqT4XyLY1vbwLbMD6GMR/wAg7nFq3rVjU2yWEfsGXopEnRnyMQjMAykxvJsspzWyNlKuPPHkqiGQxDAAAkBIACQAGAAGA5Krs9rvLpz7Ib8WHNIznTd+Us0D3uUu6L3s9p/9kO+HvJOkvi+c0Cnd5z7I8mdZ41wQ34u01MnZTll0QUHXqYZoLruz+apuINBj6IaQBI4/mVUCIu1FUSntd5dP0Q0S3vukQZzG7+GdEDG1jSSL3s9podXd75JzEpe1+PVAibvOaCJbXeXX9UNpvfdIAgzO7+ZUQO7eFekuP5mtQ014d6PtRJ8jyHmt+AQyvNkiwzzN2fNbe4E7uHom4g0GPog4rpjwcjtP7tamRB7sRrmOlwvNvBx7NWp2/UDScGrrG9wGDoZa/uAwl3ymv0s0gUOPqk0Eb2HrVB+crNrFpWyiTxGLB7MeC8/3OAd/cvqb4n2qUjCs8+N2IPUX1+g6zmN38zok9oOAHOizePG/G5nlPr84WzX62xdlr2w5/wC0zaPQuLiOyxLdD2yM68LNaYrnYu8uK4uPMkfUr9TNkBLA4YZ9U2mW92zSYyeolyt91+dLD4aaTiVNmEJvvRXtb/a0l3yW3aG8GAa2m1nmyA2VeUR4M/6V1wAzmd38MqIcJ7v2WmWB0FqlYrKf2Fma1/8AuOm+J2e+ZbhgJBZ4uu0xzTcQRIY/mdUNIG9j6oFdu1xyQG3tr80Q0EVdh6oIJMxh+ckBO9TDNE5bPafX9U3Ge79kAiUjvfjlVAjs4Vmnc9rvJJtN7tmiRnP2fw6ICV7lJLzpUlhRN1d3vkqvtzx6IIs+PZEXe9EIQXaMB1Q3d7H8UIQTZs+34pDe7oQgdoyVP3ew/BCEBZ8O684OKEICNivS0Yd/uhCAh7vr+Kmz4lCECO93TtOXf8EIQU7d7BKz4HqhCCYW96otGPb7oQg9I+HdKFu+qEIIs+PZD97uPwQhBVoyTO52QhArPmvF+J6lCEH/2Q=="),),
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("image/drawer.jpg"),fit: BoxFit.cover)
                ),
              ),
              ListTile(
                title: Text("Inbox",style: TextStyle(color: Colors.black),),
                leading: Icon(Icons.inbox),
                iconColor: Colors.black,
                onTap: () {

                },

              ),
              ListTile(
                title: Text("Starred",style: TextStyle(color: Colors.black),),
                leading: Icon(Icons.star),
                iconColor: Colors.black,
                onTap: () {

                },
              ),
              ListTile(
                title: Text("Sent Email",style: TextStyle(color: Colors.black),),
                leading: Icon(Icons.send),
                iconColor: Colors.black,
                onTap: () {

                },
              ),
              ListTile(
                title: Text("Draft",style: TextStyle(color: Colors.black),),
                leading: Icon(Icons.drafts),
                iconColor: Colors.black,
                onTap: () {

                },
              ),
              Divider(),
              ListTile(
                title: Text("All mail",style: TextStyle(color: Colors.black),),
                leading: Icon(Icons.mail),
                iconColor: Colors.black,
                onTap: () {

                },
              ),
              ListTile(
                title: Text("Trash",style: TextStyle(color: Colors.black),),
                leading: Icon(Icons.restore_from_trash),
                iconColor: Colors.black,
                onTap: () {

                },
              ),
              ListTile(
                title: Text("Spam",style: TextStyle(color: Colors.black),),
                leading: Icon(Icons.crisis_alert),
                iconColor: Colors.black,
                onTap: () {
                },

              )
            ],
          ),
        ),
      ),
    );
  }
}
