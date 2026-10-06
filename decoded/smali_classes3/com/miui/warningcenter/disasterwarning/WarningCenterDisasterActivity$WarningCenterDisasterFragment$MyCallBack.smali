.class Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment$MyCallBack;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/warningcenter/disasterwarning/db/QueryDataTask$CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyCallBack"
.end annotation


# instance fields
.field private final mWeakContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment$MyCallBack;->mWeakContext:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment$MyCallBack;-><init>(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;)V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/miui/warningcenter/disasterwarning/model/AlertSearchResult;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment$MyCallBack;->mWeakContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/miui/warningcenter/disasterwarning/model/AlertSearchResult;->getSearchResults()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-static {v0}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;->access$1000(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;)Landroidx/preference/PreferenceCategory;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;

    invoke-static {v0}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;->access$1100(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;)Lcom/miui/warningcenter/disasterwarning/preference/NearestWarningPreference;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/warningcenter/disasterwarning/preference/NearestWarningPreference;->setModel(Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;)V

    :cond_1
    return-void
.end method
