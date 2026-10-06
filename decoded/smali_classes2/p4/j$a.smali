.class Lp4/j$a;
.super Landroid/net/ConnectivityManager$OnStartTetheringCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp4/j;->b(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/net/ConnectivityManager$OnStartTetheringCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onTetheringFailed()V
    .locals 2

    invoke-super {p0}, Landroid/net/ConnectivityManager$OnStartTetheringCallback;->onTetheringFailed()V

    invoke-static {}, Lp4/j;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onTetheringFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTetheringStarted()V
    .locals 2

    invoke-super {p0}, Landroid/net/ConnectivityManager$OnStartTetheringCallback;->onTetheringStarted()V

    invoke-static {}, Lp4/j;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onTetheringStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
