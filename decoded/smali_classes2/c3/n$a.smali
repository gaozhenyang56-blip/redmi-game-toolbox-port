.class Lc3/n$a;
.super Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc3/n;->c(Lc3/h;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc3/n;


# direct methods
.method constructor <init>(Lc3/n;)V
    .locals 0

    iput-object p1, p0, Lc3/n$a;->a:Lc3/n;

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAuthenticationError: helpCode = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "FingerprintHelperImpl"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-le p2, v0, :cond_0

    const/4 p2, 0x7

    if-eq p2, p1, :cond_1

    :cond_0
    const/16 p2, 0x13

    if-ne p2, p1, :cond_2

    :cond_1
    iget-object p2, p0, Lc3/n$a;->a:Lc3/n;

    invoke-static {p2}, Lc3/n;->b(Lc3/n;)Lc3/h;

    move-result-object p2

    invoke-interface {p2, p1}, Lc3/h;->b(I)V

    :cond_2
    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 2

    const-string v0, "FingerprintHelperImpl"

    const-string v1, "onAuthenticationFailed: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lc3/n$a;->a:Lc3/n;

    invoke-static {v0}, Lc3/n;->b(Lc3/n;)Lc3/h;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lc3/h;->b(I)V

    return-void
.end method

.method public onAuthenticationSucceeded(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;->onAuthenticationSucceeded(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAuthenticationSucceeded: result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FingerprintHelperImpl"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    :try_start_0
    const-class v0, Landroid/hardware/fingerprint/Fingerprint;

    const-string v3, "getFingerprint"

    const/4 v4, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v3, v4, v1}, Lbh/f;->b(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/fingerprint/Fingerprint;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lc3/n$a;->a:Lc3/n;

    invoke-static {v0}, Lc3/n;->b(Lc3/n;)Lc3/h;

    move-result-object v0

    iget-object v1, p0, Lc3/n$a;->a:Lc3/n;

    invoke-static {v1, p1}, Lc3/n;->a(Lc3/n;Landroid/hardware/fingerprint/Fingerprint;)I

    move-result p1

    invoke-interface {v0, p1}, Lc3/h;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "onAuthenticationSucceeded exception: "

    invoke-static {v2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-void
.end method
