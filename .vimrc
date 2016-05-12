let g:rc_dir = expand('~/.vim') "vim�ݒ�f�B���N�g��
execute 'set runtimepath^=' . g:rc_dir

" ********** dein.vim �ݒ� **********
if !&compatible
  set nocompatible
endif

let s:dein_dir = g:rc_dir . '/dein' "dein�f�B���N�g��
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim' "dein���|�W�g��

"dein.vim���Ȃ��Ƃ���git clone���鏈��������邩�Y�ݒ��E�E�E
execute 'set runtimepath^=' . s:dein_repo_dir

" plugin�ݒ�J�n
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  " �v���O�C�����X�g�����߂� TOML �t�@�C��
  let s:toml      = g:rc_dir . '/.dein.toml'
  let s:lazy_toml = g:rc_dir . '/.dein_lazy.toml'

  " TOML ��ǂݍ��݁A�L���b�V�����Ă���
  call dein#load_toml(s:toml,      {'lazy': 0})
  call dein#load_toml(s:lazy_toml, {'lazy': 1})

  " �ݒ�I��
  call dein#end()
  call dein#save_state()
endif

" �����A���C���X�g�[�����̂��̂���������C���X�g�[��
if dein#check_install()
  call dein#install()
endif

filetype plugin on

" ********** NERDTree.vim �ݒ� **********
nnoremap <silent><C-e> :NERDTreeToggle<CR>  "�f�B���N�g���c���[�J�V���[�g�J�b�g Ctrl + e

" ********** �t�@�C���ݒ� *********
set fenc=utf-8    " �����R�[�h��UTF-8
set nobackup      " �o�b�N�A�b�v�t�@�C���͍쐬���Ȃ�
set noswapfile    " �X���b�v�t�@�C���͍쐬���Ȃ�
set autoread      " �ҏW���̃t�@�C�����ύX���ꂽ�玩���œǂݒ���
set hidden        " �o�b�t�@���ҏW���ł����̑��̃t�@�C�����J����悤�ɂ���
set showcmd       " ���͒��̃R�}���h���X�e�[�^�X�ɕ\������

" ********** �����ڂ̐ݒ� ********** 
set number        " �s����\������
set cursorline    " ���݂̍s�������\������
set cursorcolumn  " ���݂̍s�������\������i�c�j
set showmatch     " ���ʓ��͎��̑Ή����銇�ʂ�\������
set laststatus=2  " �X�e�[�^�X���C������ɕ\������

" ********** �^�u�ݒ� ********** 
set expandtab     " �\�t�g�^�u�L����(Tab�����𔼊p�X�y�[�X�ɂ���)
set tabstop=4	  " �^�u�������̓X�y�[�X4��
set softtabstop=2 " �\�t�g�^�u���̓X�y�[�X2��

" ********** �C���f���g �ݒ� ********** 
set autoindent	 "���s�������C���f���g
set shiftwidth=2 "autoindent���̕���2��

