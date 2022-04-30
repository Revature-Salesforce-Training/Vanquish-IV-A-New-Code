//    Author: Carl Tullis
// Last Updated: 4/29/2022
// Description: P0 project JavaScript


const karate = document.querySelector('#karatePic');
const muayThai = document.querySelector('#muayThaiPic');
const brazilJiu = document.querySelector('#brazilJiuPic');
const kungFu = document.querySelector('#kungFuPic');
const taekwondo = document.querySelector('#tkdPic');
const ninjutsu = document.querySelector('#ninjutsuPic');
const jujutsu = document.querySelector('#jujutsuPic');
const kravMaga = document.querySelector('#kravMagaPic');
const aikido = document.querySelector('#aikidoPic');
const judo = document.querySelector('#judoPic');

document.querySelector('#karate').addEventListener('click', pickKarate);
document.querySelector('#muayThai').addEventListener('click', pickMuayThai);
document.querySelector('#brazilJiu').addEventListener('click', pickbrazilJiu);
document.querySelector('#taekwondo').addEventListener('click', pickTKD);
document.querySelector('#ninjutsu').addEventListener('click', pickNinjutsu);
document.querySelector('#kravMaga').addEventListener('click', pickKravMaga);
document.querySelector('#aikido').addEventListener('click', pickAikido);
document.querySelector('#judo').addEventListener('click', pickJudo);
document.querySelector('#kungFu').addEventListener('click', pickKungFu);
document.querySelector('#jujutsu').addEventListener('click', pickJujutsu);

function pickKarate(){
    karate.classList.toggle('pic');
    muayThai.classList.add('pic');
    brazilJiu.classList.add('pic');
    kungFu.classList.add('pic');
    judo.classList.add('pic');
    taekwondo.classList.add('pic');
    ninjutsu.classList.add('pic');
    jujutsu.classList.add('pic');
    kravMaga.classList.add('pic');
    aikido.classList.add('pic');
}
function pickMuayThai(){
    karate.classList.add('pic');
    muayThai.classList.toggle('pic');
    brazilJiu.classList.add('pic');
    kungFu.classList.add('pic');
    judo.classList.add('pic');
    taekwondo.classList.add('pic');
    ninjutsu.classList.add('pic');
    jujutsu.classList.add('pic');
    kravMaga.classList.add('pic');
    aikido.classList.add('pic');
}
function pickbrazilJiu(){
    karate.classList.add('pic');
    muayThai.classList.add('pic');
    brazilJiu.classList.toggle('pic');
    kungFu.classList.add('pic');
    judo.classList.add('pic');
    taekwondo.classList.add('pic');
    ninjutsu.classList.add('pic');
    jujutsu.classList.add('pic');
    kravMaga.classList.add('pic');
    aikido.classList.add('pic');
}
function pickTKD(){
    karate.classList.add('pic');
    muayThai.classList.add('pic');
    brazilJiu.classList.add('pic');
    kungFu.classList.add('pic');
    judo.classList.add('pic');
    taekwondo.classList.toggle('pic');
    ninjutsu.classList.add('pic');
    jujutsu.classList.add('pic');
    kravMaga.classList.add('pic');
    aikido.classList.add('pic');
}
function pickNinjutsu(){
    karate.classList.add('pic')
    muayThai.classList.add('pic')
    brazilJiu.classList.add('pic')
    kungFu.classList.add('pic')
    judo.classList.add('pic')
    taekwondo.classList.add('pic')
    ninjutsu.classList.toggle('pic')
    jujutsu.classList.add('pic')
    kravMaga.classList.add('pic')
    aikido.classList.add('pic')
}
function pickKravMaga(){
    karate.classList.add('pic')
    muayThai.classList.add('pic')
    brazilJiu.classList.add('pic')
    kungFu.classList.add('pic')
    judo.classList.add('pic')
    taekwondo.classList.add('pic')
    ninjutsu.classList.add('pic')
    jujutsu.classList.add('pic')
    kravMaga.classList.toggle('pic')
    aikido.classList.add('pic')
}
function pickAikido(){
    karate.classList.add('pic')
    muayThai.classList.add('pic')
    brazilJiu.classList.add('pic')
    kungFu.classList.add('pic')
    judo.classList.add('pic')
    taekwondo.classList.add('pic')
    ninjutsu.classList.add('pic')
    jujutsu.classList.add('pic')
    kravMaga.classList.add('pic')
    aikido.classList.toggle('pic')
}
function pickJudo(){
    karate.classList.add('pic')
    muayThai.classList.add('pic')
    brazilJiu.classList.add('pic')
    kungFu.classList.add('pic')
    judo.classList.toggle('pic')
    taekwondo.classList.add('pic')
    ninjutsu.classList.add('pic')
    jujutsu.classList.add('pic')
    kravMaga.classList.add('pic')
    aikido.classList.add('pic')
}
function pickKungFu(){
    karate.classList.add('pic')
    muayThai.classList.add('pic')
    brazilJiu.classList.add('pic')
    kungFu.classList.toggle('pic')
    judo.classList.add('pic')
    taekwondo.classList.add('pic')
    ninjutsu.classList.add('pic')
    jujutsu.classList.add('pic')
    kravMaga.classList.add('pic')
    aikido.classList.add('pic')
}
function pickJujutsu(){
    karate.classList.add('pic')
    muayThai.classList.add('pic')
    brazilJiu.classList.add('pic')
    kungFu.classList.add('pic')
    judo.classList.add('pic')
    taekwondo.classList.add('pic')
    ninjutsu.classList.add('pic')
    jujutsu.classList.toggle('pic')
    kravMaga.classList.add('pic')
    aikido.classList.add('pic')
}
