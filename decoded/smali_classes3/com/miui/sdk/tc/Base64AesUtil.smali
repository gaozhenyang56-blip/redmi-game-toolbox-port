.class public final Lcom/miui/sdk/tc/Base64AesUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/miui/sdk/tc/Base64AesUtil;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static aesIVKey:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static passwd:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/sdk/tc/Base64AesUtil;

    invoke-direct {v0}, Lcom/miui/sdk/tc/Base64AesUtil;-><init>()V

    sput-object v0, Lcom/miui/sdk/tc/Base64AesUtil;->INSTANCE:Lcom/miui/sdk/tc/Base64AesUtil;

    invoke-static {}, Lcom/miui/sdk/tc/TcPlugin;->getAes3()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getAes3()"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/sdk/tc/Base64AesUtil;->passwd:Ljava/lang/String;

    invoke-static {}, Lcom/miui/sdk/tc/TcPlugin;->getAesIVKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getAesIVKey()"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/sdk/tc/Base64AesUtil;->aesIVKey:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final base64AndAESDecode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "src"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/miui/sdk/tc/Base64AesUtil;->INSTANCE:Lcom/miui/sdk/tc/Base64AesUtil;

    const/4 v2, 0x0

    invoke-static {p0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/miui/sdk/tc/Base64AesUtil;->aesDecrypt([B)[B

    move-result-object p0

    invoke-static {p0}, Lbk/m;->b(Ljava/lang/Object;)V

    sget-object v1, Ljk/c;->b:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static final base64AndAesEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "src"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/miui/sdk/tc/Base64AesUtil;->INSTANCE:Lcom/miui/sdk/tc/Base64AesUtil;

    invoke-virtual {v0, p0}, Lcom/miui/sdk/tc/Base64AesUtil;->aesEncrypt(Ljava/lang/String;)[B

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    const-string v0, "encodeToString(aesEncrypt(src), Base64.DEFAULT)"

    invoke-static {p0, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public final aesDecrypt([B)[B
    .locals 6
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "this as java.lang.String).getBytes(charset)"

    :try_start_0
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v2, Lcom/miui/sdk/tc/Base64AesUtil;->passwd:Ljava/lang/String;

    sget-object v3, Ljk/c;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-static {v2, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "AES"

    invoke-direct {v1, v2, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v2, "AES/CBC/PKCS5Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v5, Lcom/miui/sdk/tc/Base64AesUtil;->aesIVKey:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-static {v3, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v4, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v0, 0x2

    invoke-virtual {v2, v0, v1, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v2, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final aesEncrypt(Ljava/lang/String;)[B
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "this as java.lang.String).getBytes(charset)"

    const-string v1, "in"

    invoke-static {p1, v1}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v2, Lcom/miui/sdk/tc/Base64AesUtil;->passwd:Ljava/lang/String;

    sget-object v3, Ljk/c;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-static {v2, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "AES"

    invoke-direct {v1, v2, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v2, "AES/CBC/PKCS5Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v5, Lcom/miui/sdk/tc/Base64AesUtil;->aesIVKey:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    invoke-static {v5, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v5, 0x1

    invoke-virtual {v2, v5, v1, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-static {p1, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
