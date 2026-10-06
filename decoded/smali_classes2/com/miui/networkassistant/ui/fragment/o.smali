.class public final synthetic Lcom/miui/networkassistant/ui/fragment/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/networkassistant/ui/dialog/RegionPickerDialog$ChangeListener;


# instance fields
.field public final synthetic a:Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/o;->a:Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;

    return-void
.end method


# virtual methods
.method public final getCityForProvince(I)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/o;->a:Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;

    invoke-static {v0, p1}, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->e0(Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;I)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
