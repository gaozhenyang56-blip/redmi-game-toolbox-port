.class public Lu8/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq6/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq6/b<",
        "Lcom/miui/gamebooster/voicechanger/model/VoiceModel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private i(Lcom/miui/gamebooster/customview/VoiceModeView;Ljava/lang/String;ZZ)V
    .locals 2

    sget-object v0, Lx4/o0;->b:Lrh/c;

    new-instance v1, Lu8/e$b;

    invoke-direct {v1, p0, p3, p1, p4}, Lu8/e$b;-><init>(Lu8/e;ZLcom/miui/gamebooster/customview/VoiceModeView;Z)V

    invoke-static {p2, v0, v1}, Lx4/o0;->o(Ljava/lang/String;Lrh/c;Lyh/a;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b()I
    .locals 1

    const v0, 0x7f0e0215

    return v0
.end method

.method public bridge synthetic c(Lq6/i;Ljava/lang/Object;I)V
    .locals 0

    check-cast p2, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;

    invoke-virtual {p0, p1, p2, p3}, Lu8/e;->f(Lq6/i;Lcom/miui/gamebooster/voicechanger/model/VoiceModel;I)V

    return-void
.end method

.method public bridge synthetic d(Ljava/lang/Object;I)Z
    .locals 0

    check-cast p1, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;

    invoke-virtual {p0, p1, p2}, Lu8/e;->g(Lcom/miui/gamebooster/voicechanger/model/VoiceModel;I)Z

    move-result p1

    return p1
.end method

.method public synthetic e()Landroid/view/View;
    .locals 1

    invoke-static {p0}, Lq6/a;->c(Lq6/b;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public f(Lq6/i;Lcom/miui/gamebooster/voicechanger/model/VoiceModel;I)V
    .locals 4

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    check-cast v0, Lcom/miui/gamebooster/customview/VoiceModeView;

    invoke-virtual {p2}, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;->getModeTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/customview/VoiceModeView;->setModeTitle(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;->getGroup()I

    move-result v1

    const/4 v2, 0x2

    if-ne v2, v1, :cond_1

    invoke-static {}, Lef/x;->z()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;->isSelected()Z

    move-result v1

    invoke-virtual {v0}, Lcom/miui/gamebooster/customview/VoiceModeView;->e()V

    invoke-virtual {p2}, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;->getIcon()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v0, v2, v3, v1}, Lu8/e;->i(Lcom/miui/gamebooster/customview/VoiceModeView;Ljava/lang/String;ZZ)V

    invoke-virtual {p2}, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;->getSelectIcon()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;->getSelectIcon()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;->getIcon()Ljava/lang/String;

    move-result-object v2

    :goto_0
    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3, v1}, Lu8/e;->i(Lcom/miui/gamebooster/customview/VoiceModeView;Ljava/lang/String;ZZ)V

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;->getNormalIconRes()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/customview/VoiceModeView;->setNormalIconRes(I)V

    invoke-virtual {p2}, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;->isSelected()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/customview/VoiceModeView;->setIonBgStatus(I)V

    :goto_1
    new-instance v1, Lu8/e$a;

    invoke-direct {v1, p0, p3, p1, p2}, Lu8/e$a;-><init>(Lu8/e;ILq6/i;Lcom/miui/gamebooster/voicechanger/model/VoiceModel;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public g(Lcom/miui/gamebooster/voicechanger/model/VoiceModel;I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public h(ILq6/i;Landroid/view/View;Lcom/miui/gamebooster/voicechanger/model/VoiceModel;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method
