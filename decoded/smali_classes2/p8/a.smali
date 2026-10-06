.class public Lp8/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/gamebooster/voicechanger/model/VoiceModel;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, La8/j2;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;

    invoke-direct {v2}, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;-><init>()V

    const v3, 0x7f08074c

    invoke-virtual {v2, v3}, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;->setNormalIconRes(I)V

    invoke-static {}, Lcom/miui/securitycenter/Application;->z()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120b00

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;->setModeTitle(Ljava/lang/String;)V

    const-string v3, "original"

    invoke-virtual {v2, v3}, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;->setType(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;->setSelected(Z)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;

    invoke-direct {v2}, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;-><init>()V

    const v3, 0x7f08074a

    invoke-virtual {v2, v3}, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;->setNormalIconRes(I)V

    invoke-static {}, Lcom/miui/securitycenter/Application;->z()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120afe

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;->setModeTitle(Ljava/lang/String;)V

    const-string v3, "loli"

    invoke-virtual {v2, v3}, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;->setType(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;->setSelected(Z)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;

    invoke-direct {v2}, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;-><init>()V

    const v3, 0x7f080749

    invoke-virtual {v2, v3}, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;->setNormalIconRes(I)V

    invoke-static {}, Lcom/miui/securitycenter/Application;->z()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120afd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;->setModeTitle(Ljava/lang/String;)V

    const-string v3, "lady"

    invoke-virtual {v2, v3}, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;->setType(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;->setSelected(Z)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;

    invoke-direct {v2}, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;-><init>()V

    const v3, 0x7f080748

    invoke-virtual {v2, v3}, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;->setNormalIconRes(I)V

    invoke-static {}, Lcom/miui/securitycenter/Application;->z()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120af4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;->setModeTitle(Ljava/lang/String;)V

    const-string v3, "cartoon"

    invoke-virtual {v2, v3}, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;->setType(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;->setSelected(Z)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;

    invoke-direct {v2}, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;-><init>()V

    const v3, 0x7f08074d

    invoke-virtual {v2, v3}, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;->setNormalIconRes(I)V

    invoke-static {}, Lcom/miui/securitycenter/Application;->z()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120b05

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;->setModeTitle(Ljava/lang/String;)V

    const-string v3, "robot"

    invoke-virtual {v2, v3}, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;->setType(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;->setSelected(Z)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;

    invoke-direct {v2}, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;-><init>()V

    const v3, 0x7f08074b

    invoke-virtual {v2, v3}, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;->setNormalIconRes(I)V

    invoke-static {}, Lcom/miui/securitycenter/Application;->z()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120aff

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;->setModeTitle(Ljava/lang/String;)V

    const-string v3, "men"

    invoke-virtual {v2, v3}, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;->setType(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;->setSelected(Z)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
