.class Lcom/miui/gamebooster/ui/GameVideoPlayActivity$c;
.super Lw4/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/ui/GameVideoPlayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lw4/d<",
        "Ljava/util/List<",
        "Lcom/miui/gamebooster/model/y;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final q:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/gamebooster/ui/GameVideoPlayActivity;",
            ">;"
        }
    .end annotation
.end field

.field private r:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/miui/gamebooster/ui/GameVideoPlayActivity;)V
    .locals 1

    invoke-direct {p0, p1}, Lw4/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity$c;->r:Landroid/content/Context;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity$c;->q:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public bridge synthetic G()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/GameVideoPlayActivity$c;->J()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public J()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/gamebooster/model/y;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity$c;->q:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "key_match_info"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "GameVideoPlayActivity"

    if-nez v2, :cond_1

    const-string v0, "load match videos"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity$c;->r:Landroid/content/Context;

    invoke-static {v0, v1}, La8/q;->j(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v1, "load all videos"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/miui/gamebooster/ui/GameVideoPlayActivity$c;->r:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/GameVideoPlayActivity;->g0(Lcom/miui/gamebooster/ui/GameVideoPlayActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, La8/q;->g(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
