.class Lcom/miui/electricrisk/ElectricProtectMmsFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$c;
.implements Landroidx/preference/Preference$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/electricrisk/ElectricProtectMmsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/electricrisk/ElectricProtectMmsFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/miui/electricrisk/ElectricProtectMmsFragment;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/electricrisk/ElectricProtectMmsFragment$b;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/electricrisk/ElectricProtectMmsFragment;Lcom/miui/electricrisk/ElectricProtectMmsFragment$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/electricrisk/ElectricProtectMmsFragment$b;-><init>(Lcom/miui/electricrisk/ElectricProtectMmsFragment;)V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lcom/miui/electricrisk/ElectricProtectMmsFragment$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/electricrisk/ElectricProtectMmsFragment;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {v0}, Lcom/miui/electricrisk/ElectricProtectMmsFragment;->a0(Lcom/miui/electricrisk/ElectricProtectMmsFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object v2

    if-ne p1, v2, :cond_1

    invoke-static {p2}, Lcom/miui/electricrisk/h;->t(Z)V

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/miui/electricrisk/ElectricProtectMmsFragment;->b0(Lcom/miui/electricrisk/ElectricProtectMmsFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object v0

    if-ne p1, v0, :cond_2

    invoke-static {p2}, Lcom/miui/electricrisk/h;->u(Z)V

    :cond_2
    :goto_0
    return v1
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
