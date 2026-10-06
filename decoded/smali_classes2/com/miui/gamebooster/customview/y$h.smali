.class Lcom/miui/gamebooster/customview/y$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/customview/y;->Y()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/customview/y;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/customview/y;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/customview/y$h;->a:Lcom/miui/gamebooster/customview/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/customview/y$h;->a:Lcom/miui/gamebooster/customview/y;

    invoke-virtual {v0}, Lcom/miui/gamebooster/customview/y;->getSelectModel()Lcom/miui/gamebooster/voicechanger/model/VoiceModel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;->getModeTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La8/j2;->v(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lo8/k;->C()Lo8/k;

    move-result-object v0

    invoke-virtual {v0}, Lo8/k;->B()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/customview/y$h;->a:Lcom/miui/gamebooster/customview/y;

    invoke-static {v1, v0}, Lcom/miui/gamebooster/customview/y;->q(Lcom/miui/gamebooster/customview/y;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/y$h;->a:Lcom/miui/gamebooster/customview/y;

    invoke-static {v0}, Lcom/miui/gamebooster/customview/y;->v(Lcom/miui/gamebooster/customview/y;)V

    invoke-direct {p0}, Lcom/miui/gamebooster/customview/y$h;->a()V

    invoke-static {}, Lo8/k;->C()Lo8/k;

    move-result-object v0

    invoke-virtual {v0}, Lo8/k;->W()V

    return-void
.end method
