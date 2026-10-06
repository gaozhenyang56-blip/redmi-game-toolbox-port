.class public Lxb/j;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b()Ljava/security/PublicKey;
    .locals 3

    :try_start_0
    const-string v0, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQC/gT0vSqtsv7y4c7qLn1tvJF6Uur067h8pf7VXJNNqYxVWdpR5la5QuLIi90bZntPGsxM7IDSTL7Wia9ox+CbalDC3+ouPMVIjMK9tqWfb8F0XQJi8eHlZ4KpGZxqQDOcisxGQHClig/dD/CkqlX4eTyK7HDRVRS8Jj6SiaWDY2QIDAQAB"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "RSA_Encryption"

    const-string v2, "get public key error!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)[B
    .locals 10

    :try_start_0
    invoke-direct {p0}, Lxb/j;->b()Ljava/security/PublicKey;

    move-result-object v0

    const-string v1, "RSA/ECB/PKCS1Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    array-length v0, p1

    sub-int/2addr v0, v2

    const/16 v3, 0x75

    div-int/2addr v0, v3

    add-int/2addr v0, v2

    mul-int/lit16 v2, v0, 0x80

    new-array v2, v2, [B

    new-array v4, v3, [B

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v0, :cond_1

    add-int/lit8 v7, v0, -0x1

    if-ne v6, v7, :cond_0

    array-length v4, p1

    mul-int/lit8 v7, v6, 0x75

    sub-int/2addr v4, v7

    if-lez v4, :cond_1

    new-array v8, v4, [B

    invoke-static {p1, v7, v8, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v4, v8

    goto :goto_1

    :cond_0
    mul-int/lit8 v7, v6, 0x75

    invoke-static {p1, v7, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    invoke-virtual {v1, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v7

    mul-int/lit16 v8, v6, 0x80

    const/16 v9, 0x80

    invoke-static {v7, v5, v2, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    return-object v2

    :catch_0
    move-exception p1

    const-string v0, "RSA_Encryption"

    const-string v1, "encrypt error!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method
