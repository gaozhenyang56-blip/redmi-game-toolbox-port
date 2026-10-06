.class final Lcom/miui/permcenter/privacycenter/PrivacyFragment$c;
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
        "Lcom/miui/permcenter/settings/model/OneImagePreference;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/permcenter/privacycenter/PrivacyFragment;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/privacycenter/PrivacyFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/privacycenter/PrivacyFragment$c;->a:Lcom/miui/permcenter/privacycenter/PrivacyFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lbk/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/miui/permcenter/settings/model/OneImagePreference;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/permcenter/privacycenter/PrivacyFragment$c;->a:Lcom/miui/permcenter/privacycenter/PrivacyFragment;

    const-string v1, "privacy_image"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/miui/permcenter/settings/model/OneImagePreference;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Preference with key \'privacy_image\' not found!"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/permcenter/privacycenter/PrivacyFragment$c;->a()Lcom/miui/permcenter/settings/model/OneImagePreference;

    move-result-object v0

    return-object v0
.end method
