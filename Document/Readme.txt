--------------------------------------------------
ChangeTextEncode.vbs
Readme.txt
--------------------------------------------------
Standard Software
2015/01/31
--------------------------------------------------
���@�\
ChangeTextEncode.vbs �̓e�L�X�g�̃G���R�[�h��ϊ�����
�R�}���h�v���O�����ł��B

���g����
���̂悤�ɃR�}���h���w�肵�Ď��s���܂��B

    ChangeTextEncode.vbs
        ���t�@�C���G���R�[�h��
        ���t�@�C���p�X
        �ϊ���G���R�[�h��
        [�ϊ���t�@�C���p�X]

������3��������4�ɂ��ăR�}���h���Ăяo���܂��B
[�ϊ���t�@�C���p�X]���ȗ������ꍇ��
���t�@�C���𒼐ڃG���R�[�h�ϊ����܂��B

���g�p��

ChangeTextEncode.vbs "shift_jis" .\TestFile\File_SJIS.txt "UTF-8" .\TestFile\File_SJIS-to-UTF8.txt

�G���R�[�h����t�@�C���p�X��
�_�u���N�E�H�[�e�[�V�����ň͂��Ă��͂�Ȃ��Ă�OK�ł���
�󔒂��܂ރt�@�C���p�X�̏ꍇ��
�_�u���N�E�H�[�e�[�V�������K�v�ɂȂ�܂��B

���Ή��g���q
    �G���R�[�h          �w�蕶��
    ShiftJIS            SHIFT_JIS
    UTF-16LE BOM�L��    UNICODEFFFE/UNICODE/UTF-16
    UTF-16LE BOM����    UTF-16LE
    UTF-16BE BOM�L��    UNICODEFEFF
    UTF-16BE BOM����    UTF-16BE
    UTF-8 BOM�L��       UTF-8
    UTF-8 BOM����       UTF-8N
    JIS                 ISO-2022-JP
    EUC-JP              EUC-JP
    UTF-7               UTF-7

�ǂݍ��ݎ��� UTF-8 �� UTF-16LE �̏ꍇ��
BOM�̗L���֌W�Ȃ��ǂݍ��ގ��͉\�ł��B