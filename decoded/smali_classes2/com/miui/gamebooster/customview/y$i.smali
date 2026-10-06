.class Lcom/miui/gamebooster/customview/y$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/customview/y;->m0(Lcom/miui/gamebooster/voicechanger/model/VoiceTipsModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/voicechanger/model/VoiceTipsModel;

.field final synthetic b:Lcom/miui/gamebooster/customview/y;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/customview/y;Lcom/miui/gamebooster/voicechanger/model/VoiceTipsModel;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/customview/y$i;->b:Lcom/miui/gamebooster/customview/y;

    iput-object p2, p0, Lcom/miui/gamebooster/customview/y$i;->a:Lcom/miui/gamebooster/voicechanger/model/VoiceTipsModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/customview/y$i;->a:Lcom/miui/gamebooster/voicechanger/model/VoiceTipsModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/customview/y$i;->b:Lcom/miui/gamebooster/customview/y;

    invoke-static {v0}, Lcom/miui/gamebooster/customview/y;->w(Lcom/miui/gamebooster/customview/y;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/y$i;->b:Lcom/miui/gamebooster/customview/y;

    invoke-static {v0}, Lcom/miui/gamebooster/customview/y;->w(Lcom/miui/gamebooster/customview/y;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/customview/y$i;->a:Lcom/miui/gamebooster/voicechanger/model/VoiceTipsModel;

    invoke-virtual {v1}, Lcom/miui/gamebooster/voicechanger/model/VoiceTipsModel;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/y$i;->b:Lcom/miui/gamebooster/customview/y;

    invoke-static {v0}, Lcom/miui/gamebooster/customview/y;->w(Lcom/miui/gamebooster/customview/y;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/customview/y$i;->a:Lcom/miui/gamebooster/voicechanger/model/VoiceTipsModel;

    invoke-virtual {v1}, Lcom/miui/gamebooster/voicechanger/model/VoiceTipsModel;->getTitleColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/y$i;->b:Lcom/miui/gamebooster/customview/y;

    invoke-static {v0}, Lcom/miui/gamebooster/customview/y;->w(Lcom/miui/gamebooster/customview/y;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/customview/y$i;->a:Lcom/miui/gamebooster/voicechanger/model/VoiceTipsModel;

    invoke-virtual {v1}, Lcom/miui/gamebooster/voicechanger/model/VoiceTipsModel;->getBgRes()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/y$i;->b:Lcom/miui/gamebooster/customview/y;

    invoke-static {v0}, Lcom/miui/gamebooster/customview/y;->y(Lcom/miui/gamebooster/customview/y;)Landroid/view/ViewGroup;

    move-result-object v0

    const v1, 0x7f080761

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method
