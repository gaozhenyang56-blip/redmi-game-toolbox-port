.class public Lcom/miui/simlock/fragment/SimLockBaseFragment;
.super Lmiuix/preference/PreferenceFragment;
.source "SourceFile"


# instance fields
.field protected a:Lmiui/telephony/SubscriptionManager;

.field protected b:Landroid/content/Context;

.field c:Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;-><init>()V

    new-instance v0, Lhg/a;

    invoke-direct {v0, p0}, Lhg/a;-><init>(Lcom/miui/simlock/fragment/SimLockBaseFragment;)V

    iput-object v0, p0, Lcom/miui/simlock/fragment/SimLockBaseFragment;->c:Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    return-void
.end method


# virtual methods
.method public a0()V
    .locals 0

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/simlock/fragment/SimLockBaseFragment;->a:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/simlock/fragment/SimLockBaseFragment;->b:Landroid/content/Context;

    iget-object p1, p0, Lcom/miui/simlock/fragment/SimLockBaseFragment;->a:Lmiui/telephony/SubscriptionManager;

    iget-object p2, p0, Lcom/miui/simlock/fragment/SimLockBaseFragment;->c:Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {p1, p2}, Lmiui/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    iget-object v0, p0, Lcom/miui/simlock/fragment/SimLockBaseFragment;->a:Lmiui/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/miui/simlock/fragment/SimLockBaseFragment;->c:Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Lmiui/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    return-void
.end method
