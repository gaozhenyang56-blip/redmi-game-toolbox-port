.class Lcom/miui/gamebooster/ui/BoosterFragment$o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/ui/BoosterFragment;->S1(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/miui/gamebooster/ui/BoosterFragment;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/BoosterFragment;II)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/BoosterFragment$o;->c:Lcom/miui/gamebooster/ui/BoosterFragment;

    iput p2, p0, Lcom/miui/gamebooster/ui/BoosterFragment$o;->a:I

    iput p3, p0, Lcom/miui/gamebooster/ui/BoosterFragment$o;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment$o;->a:I

    invoke-static {v0}, Lcom/miui/gamebooster/model/b0;->g(I)Lcom/miui/gamebooster/model/c0;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/ui/BoosterFragment$o;->c:Lcom/miui/gamebooster/ui/BoosterFragment;

    invoke-static {v1}, Lcom/miui/gamebooster/ui/BoosterFragment;->i1(Lcom/miui/gamebooster/ui/BoosterFragment;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/miui/gamebooster/ui/BoosterFragment$o$a;

    invoke-direct {v2, p0, v0}, Lcom/miui/gamebooster/ui/BoosterFragment$o$a;-><init>(Lcom/miui/gamebooster/ui/BoosterFragment$o;Lcom/miui/gamebooster/model/c0;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/miui/gamebooster/ui/BoosterFragment;->u0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadAndShowDialog error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/miui/gamebooster/ui/BoosterFragment$o;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
