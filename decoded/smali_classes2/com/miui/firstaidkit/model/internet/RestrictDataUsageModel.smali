.class public Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;
.super Lcom/miui/securityscan/model/AbsModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel$b;
    }
.end annotation


# static fields
.field private static final SET_KEY_MOBILE:Ljava/lang/String; = "RestrictDataUsageModel_Mobile"

.field private static final SET_KEY_WLAN:Ljava/lang/String; = "RestrictDataUsageModel_Wlan"

.field private static final TAG:Ljava/lang/String; = "RestrictDataUsageModel"


# instance fields
.field private appName:Ljava/lang/String;

.field private canRecountTime:Z

.field private canSaveCache:Z

.field private final mResolver:Landroid/content/ContentResolver;

.field private mobileValueSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private spfHelper:Luf/b;

.field private visibleItemIndex:I

.field private wlanValueSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/securityscan/model/AbsModel;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, ""

    iput-object p1, p0, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;->appName:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;->canSaveCache:Z

    invoke-virtual {p0, p1}, Lcom/miui/securityscan/model/AbsModel;->setDelayOptimized(Z)V

    const-string p1, "restrict_data_usage"

    invoke-virtual {p0, p1}, Lcom/miui/securityscan/model/AbsModel;->setTrackStr(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->getTrackStr()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_ignore"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/securityscan/model/AbsModel;->setTrackIgnoreStr(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "data_config"

    invoke-static {p1, p2}, Luf/b;->d(Landroid/content/Context;Ljava/lang/String;)Luf/b;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;->spfHelper:Luf/b;

    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;->mResolver:Landroid/content/ContentResolver;

    new-instance p1, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel$a;

    invoke-direct {p1, p0}, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel$a;-><init>(Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;)V

    invoke-virtual {p0, p1}, Lcom/miui/securityscan/model/AbsModel;->setOnAbsModelDisplayListener(Lcom/miui/securityscan/model/AbsModel$AbsModelDisplayListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;->canSaveCache:Z

    return p0
.end method

.method static synthetic access$002(Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;->canSaveCache:Z

    return p1
.end method

.method static synthetic access$100(Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;->canRecountTime:Z

    return p0
.end method

.method static synthetic access$200(Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;->wlanValueSet:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;)Luf/b;
    .locals 0

    iget-object p0, p0, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;->spfHelper:Luf/b;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;->mobileValueSet:Ljava/util/Set;

    return-object p0
.end method

.method private isListNew(Ljava/util/List;Ljava/util/Set;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel$b;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel$b;

    invoke-static {v1}, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel$b;->a(Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel$b;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method

.method private queryMobileRestricts(Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel$b;",
            ">;"
        }
    .end annotation

    const-string v0, "content://com.miui.networkassistant.provider/mobile_restrict"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "package_name"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Leg/c;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v2}, Lx4/g1;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel$b;

    invoke-direct {v4, p0, v3, v2}, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel$b;-><init>(Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v1

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private queryWlanRestricts(Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel$b;",
            ">;"
        }
    .end annotation

    const-string v0, "content://com.miui.networkassistant.provider/wlan_restrict"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "package_name"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Leg/c;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v2}, Lx4/g1;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel$b;

    invoke-direct {v4, p0, v3, v2}, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel$b;-><init>(Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v1

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public getButtonTitle()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f12046a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    const/16 v0, 0x29

    return v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1218d5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;->appName:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f121a46

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ignore()V
    .locals 0

    return-void
.end method

.method public optimize(Landroid/content/Context;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/networkassistant/ui/activity/FirewallActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget v2, p0, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;->visibleItemIndex:I

    const-string v3, "VisibleItemIndex"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/16 v1, 0x64

    invoke-static {p1, v0, v1}, Lx4/f1;->S(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f120210

    invoke-static {p1, v0}, Lx4/y1;->j(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public scan()V
    .locals 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;->canRecountTime:Z

    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-nez v2, :cond_6

    invoke-static {v1}, Leg/c;->k(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {v1}, Leg/c;->m(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, v1}, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;->queryWlanRestricts(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;->spfHelper:Luf/b;

    const-string v4, "RestrictDataUsageModel_Wlan"

    invoke-virtual {v2, v4}, Luf/b;->i(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_6

    invoke-direct {p0, v1, v2}, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;->isListNew(Ljava/util/List;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_2

    iput-boolean v3, p0, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;->canRecountTime:Z

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;->wlanValueSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel$b;

    iget-object v5, p0, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;->wlanValueSet:Ljava/util/Set;

    invoke-static {v4}, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel$b;->a(Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel$b;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move v2, v3

    goto :goto_2

    :cond_2
    move v2, v0

    :goto_2
    if-eqz v2, :cond_6

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel$b;

    invoke-static {v0}, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel$b;->b(Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;->appName:Ljava/lang/String;

    iput v3, p0, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;->visibleItemIndex:I

    goto :goto_4

    :cond_3
    invoke-static {v1}, Leg/c;->j(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-direct {p0, v1}, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;->queryMobileRestricts(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;->spfHelper:Luf/b;

    const-string v4, "RestrictDataUsageModel_Mobile"

    invoke-virtual {v2, v4}, Luf/b;->i(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_6

    invoke-direct {p0, v1, v2}, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;->isListNew(Ljava/util/List;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_4

    iput-boolean v3, p0, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;->canRecountTime:Z

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;->mobileValueSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel$b;

    iget-object v5, p0, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;->mobileValueSet:Ljava/util/Set;

    invoke-static {v4}, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel$b;->a(Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel$b;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    move v3, v0

    :cond_5
    if-eqz v3, :cond_6

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel$b;

    invoke-static {v1}, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel$b;->b(Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel$b;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;->appName:Ljava/lang/String;

    iput v0, p0, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;->visibleItemIndex:I

    :goto_4
    sget-object v0, Lcom/miui/securityscan/model/AbsModel$State;->DANGER:Lcom/miui/securityscan/model/AbsModel$State;

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/model/AbsModel;->setSafe(Lcom/miui/securityscan/model/AbsModel$State;)V

    :cond_6
    return-void
.end method
