.class final Lcom/miui/permcenter/privacycenter/PrivacyFragment$f;
.super Lbk/n;
.source "SourceFile"

# interfaces
.implements Lak/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/permcenter/privacycenter/PrivacyFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbk/n;",
        "Lak/a<",
        "Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/permcenter/privacycenter/PrivacyFragment;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/privacycenter/PrivacyFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/privacycenter/PrivacyFragment$f;->a:Lcom/miui/permcenter/privacycenter/PrivacyFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lbk/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/permcenter/privacycenter/PrivacyFragment$f;->a:Lcom/miui/permcenter/privacycenter/PrivacyFragment;

    const-string v1, "recent_usage_pref"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/permcenter/privacycenter/PrivacyFragment$f;->a()Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference;

    move-result-object v0

    return-object v0
.end method
