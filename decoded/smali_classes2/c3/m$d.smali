.class Lc3/m$d;
.super Landroid/hardware/face/FaceManager$AuthenticationCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc3/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc3/m;


# direct methods
.method constructor <init>(Lc3/m;)V
    .locals 0

    iput-object p1, p0, Lc3/m$d;->a:Lc3/m;

    invoke-direct {p0}, Landroid/hardware/face/FaceManager$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lc3/m$d;->a:Lc3/m;

    invoke-static {v0, p1, p2}, Lc3/m;->i(Lc3/m;ILjava/lang/CharSequence;)V

    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 1

    iget-object v0, p0, Lc3/m$d;->a:Lc3/m;

    invoke-static {v0}, Lc3/m;->h(Lc3/m;)V

    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/hardware/face/FaceManager$AuthenticationCallback;->onAuthenticationHelp(ILjava/lang/CharSequence;)V

    iget-object v0, p0, Lc3/m$d;->a:Lc3/m;

    invoke-static {v0, p1, p2}, Lc3/m;->g(Lc3/m;ILjava/lang/CharSequence;)V

    return-void
.end method

.method public onAuthenticationSucceeded(Landroid/hardware/face/FaceManager$AuthenticationResult;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/hardware/face/FaceManager$AuthenticationCallback;->onAuthenticationSucceeded(Landroid/hardware/face/FaceManager$AuthenticationResult;)V

    iget-object p1, p0, Lc3/m$d;->a:Lc3/m;

    invoke-static {p1}, Lc3/m;->f(Lc3/m;)V

    return-void
.end method
