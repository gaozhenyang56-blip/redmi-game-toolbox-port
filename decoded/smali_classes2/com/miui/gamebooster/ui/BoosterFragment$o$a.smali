.class Lcom/miui/gamebooster/ui/BoosterFragment$o$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/ui/BoosterFragment$o;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/model/c0;

.field final synthetic b:Lcom/miui/gamebooster/ui/BoosterFragment$o;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/BoosterFragment$o;Lcom/miui/gamebooster/model/c0;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/BoosterFragment$o$a;->b:Lcom/miui/gamebooster/ui/BoosterFragment$o;

    iput-object p2, p0, Lcom/miui/gamebooster/ui/BoosterFragment$o$a;->a:Lcom/miui/gamebooster/model/c0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment$o$a;->b:Lcom/miui/gamebooster/ui/BoosterFragment$o;

    iget v1, v0, Lcom/miui/gamebooster/ui/BoosterFragment$o;->a:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/miui/gamebooster/ui/BoosterFragment$o;->c:Lcom/miui/gamebooster/ui/BoosterFragment;

    iget v0, v0, Lcom/miui/gamebooster/ui/BoosterFragment$o;->b:I

    iget-object v2, p0, Lcom/miui/gamebooster/ui/BoosterFragment$o$a;->a:Lcom/miui/gamebooster/model/c0;

    invoke-static {v1, v0, v2}, Lcom/miui/gamebooster/ui/BoosterFragment;->h1(Lcom/miui/gamebooster/ui/BoosterFragment;ILcom/miui/gamebooster/model/c0;)V

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/miui/gamebooster/ui/BoosterFragment$o;->c:Lcom/miui/gamebooster/ui/BoosterFragment;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/miui/gamebooster/ui/BoosterFragment$o$a;->a:Lcom/miui/gamebooster/model/c0;

    invoke-static {v0, v1, v2}, Lcom/miui/gamebooster/ui/BoosterFragment;->f1(Lcom/miui/gamebooster/ui/BoosterFragment;ZLcom/miui/gamebooster/model/c0;)V

    goto :goto_0

    :cond_2
    iget-object v0, v0, Lcom/miui/gamebooster/ui/BoosterFragment$o;->c:Lcom/miui/gamebooster/ui/BoosterFragment;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/BoosterFragment$o$a;->a:Lcom/miui/gamebooster/model/c0;

    invoke-static {v0, v1}, Lcom/miui/gamebooster/ui/BoosterFragment;->g1(Lcom/miui/gamebooster/ui/BoosterFragment;Lcom/miui/gamebooster/model/c0;)V

    goto :goto_0

    :cond_3
    iget-object v0, v0, Lcom/miui/gamebooster/ui/BoosterFragment$o;->c:Lcom/miui/gamebooster/ui/BoosterFragment;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/BoosterFragment$o$a;->a:Lcom/miui/gamebooster/model/c0;

    invoke-static {v0, v2, v1}, Lcom/miui/gamebooster/ui/BoosterFragment;->f1(Lcom/miui/gamebooster/ui/BoosterFragment;ZLcom/miui/gamebooster/model/c0;)V

    :goto_0
    return-void
.end method
