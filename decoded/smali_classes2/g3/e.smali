.class public final synthetic Lg3/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$d;


# instance fields
.field public final synthetic a:Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg3/e;->a:Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    iget-object v0, p0, Lg3/e;->a:Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;

    invoke-virtual {v0, p1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->onPreferenceClick(Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method
