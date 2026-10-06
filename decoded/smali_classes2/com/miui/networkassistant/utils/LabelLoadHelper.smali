.class public Lcom/miui/networkassistant/utils/LabelLoadHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ICON_DELETED_APP:Ljava/lang/String; = "icon_deleted_app"

.field public static final ICON_MANAGED_PROFILE:Ljava/lang/String; = "magaged_profile_package"

.field public static final ICON_MI_STATS:Ljava/lang/String; = "com.xiaomi.mistatistic"

.field public static final ICON_OTHERS:Ljava/lang/String; = "icon_others"

.field public static final ICON_PERSONAL_HOTPOT:Ljava/lang/String; = "icon_personal_hotpot"

.field public static final ICON_ROOT:Ljava/lang/String; = "icon_root"

.field public static final ICON_SYSTEM_APP:Ljava/lang/String; = "icon_system_app"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCustomLabel(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    const-string v0, "icon_system_app"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f121912

    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "icon_deleted_app"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f120648

    goto :goto_0

    :cond_1
    const-string v0, "icon_personal_hotpot"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f1211d2

    goto :goto_0

    :cond_2
    const-string v0, "icon_root"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f1215b5    # 1.9418E38f

    goto :goto_0

    :cond_3
    const-string v0, "icon_others"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f120eb1

    goto :goto_0

    :cond_4
    const-string v0, "com.xiaomi.mistatistic"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f120c9e

    goto :goto_0

    :cond_5
    invoke-static {p1}, Lcom/miui/networkassistant/utils/HybirdServiceUtil;->isHybirdService(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p0}, Lcom/miui/networkassistant/utils/HybirdServiceUtil;->getHybirdActivityLabel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    const-string v0, "magaged_profile_package"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f120d46

    goto :goto_0

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method public static loadLabel(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/networkassistant/utils/PackageUtil;->getRealPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/miui/networkassistant/utils/LabelLoadHelper;->getCustomLabel(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lx4/f1;->O(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    :cond_0
    return-object v0
.end method
