.class Lde/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/j;->I(Landroid/content/Context;Landroid/net/Uri;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/net/Uri;

.field final synthetic c:I


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/net/Uri;I)V
    .locals 0

    iput-object p1, p0, Lde/j$a;->a:Landroid/content/Context;

    iput-object p2, p0, Lde/j$a;->b:Landroid/net/Uri;

    iput p3, p0, Lde/j$a;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lde/j$a;->a:Landroid/content/Context;

    iget-object v1, p0, Lde/j$a;->b:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v1, p0, Lde/j$a;->c:I

    if-ltz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/media/Ringtone;->setStreamType(I)V

    :cond_0
    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    invoke-static {}, Lde/i;->M()Lde/i;

    move-result-object v1

    invoke-virtual {v1, v0}, Lde/i;->i0(Landroid/media/Ringtone;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error playing ringtone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lde/j$a;->b:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PowerNoticeUtils"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method
