.class Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->B0(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment$a;->b:Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;

    iput-object p2, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    iget-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment$a;->a:Ljava/lang/String;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {p1, p2}, Lo2/h;->A(Ljava/lang/String;Z)V

    const/4 p1, 0x1

    return p1
.end method
