.class public Lcom/miui/firstaidkit/model/internet/BackgroundConnectionModel;
.super Lcom/miui/securityscan/model/AbsModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/firstaidkit/model/internet/BackgroundConnectionModel$b;
    }
.end annotation


# static fields
.field private static final BACKGROUND_CONNECTION_MODEL_BG:Ljava/lang/String; = "BackgroundConnectionModel_BG"

.field private static final TAG:Ljava/lang/String; = "BackgroundConnectionModel"


# instance fields
.field private appName:Ljava/lang/String;

.field private canRecountTime:Z

.field private canSaveCache:Z

.field private final mResolver:Landroid/content/ContentResolver;

.field private spfHelper:Luf/b;

.field private valueSet:Ljava/util/Set;
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

    iput-object p1, p0, Lcom/miui/firstaidkit/model/internet/BackgroundConnectionModel;->appName:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/firstaidkit/model/internet/BackgroundConnectionModel;->canSaveCache:Z

    invoke-virtual {p0, p1}, Lcom/miui/securityscan/model/AbsModel;->setDelayOptimized(Z)V

    const-string p1, "background_connection"

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

    iput-object p1, p0, Lcom/miui/firstaidkit/model/internet/BackgroundConnectionModel;->spfHelper:Luf/b;

    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/firstaidkit/model/internet/BackgroundConnectionModel;->mResolver:Landroid/content/ContentResolver;

    new-instance p1, Lcom/miui/firstaidkit/model/internet/BackgroundConnectionModel$a;

    invoke-direct {p1, p0}, Lcom/miui/firstaidkit/model/internet/BackgroundConnectionModel$a;-><init>(Lcom/miui/firstaidkit/model/internet/BackgroundConnectionModel;)V

    invoke-virtual {p0, p1}, Lcom/miui/securityscan/model/AbsModel;->setOnAbsModelDisplayListener(Lcom/miui/securityscan/model/AbsModel$AbsModelDisplayListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/firstaidkit/model/internet/BackgroundConnectionModel;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/firstaidkit/model/internet/BackgroundConnectionModel;->canSaveCache:Z

    return p0
.end method

.method static synthetic access$002(Lcom/miui/firstaidkit/model/internet/BackgroundConnectionModel;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/firstaidkit/model/internet/BackgroundConnectionModel;->canSaveCache:Z

    return p1
.end method

.method static synthetic access$100(Lcom/miui/firstaidkit/model/internet/BackgroundConnectionModel;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/firstaidkit/model/internet/BackgroundConnectionModel;->canRecountTime:Z

    return p0
.end method

.method static synthetic access$200(Lcom/miui/firstaidkit/model/internet/BackgroundConnectionModel;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/miui/firstaidkit/model/internet/BackgroundConnectionModel;->valueSet:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/firstaidkit/model/internet/BackgroundConnectionModel;)Luf/b;
    .locals 0

    iget-object p0, p0, Lcom/miui/firstaidkit/model/internet/BackgroundConnectionModel;->spfHelper:Luf/b;

    return-object p0
.end method

.method private isListNew(Ljava/util/List;Ljava/util/Set;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/firstaidkit/model/internet/BackgroundConnectionModel$b;",
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

    check-cast v1, Lcom/miui/firstaidkit/model/internet/BackgroundConnectionModel$b;

    invoke-static {v1}, Lcom/miui/firstaidkit/model/internet/BackgroundConnectionModel$b;->a(Lcom/miui/firstaidkit/model/internet/BackgroundConnectionModel$b;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method

.method private queryBackgroundRestricts(Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/firstaidkit/model/internet/BackgroundConnectionModel$b;",
            ">;"
        }
    .end annotation

    const-string v0, "content://com.miui.networkassistant.provider/firewall_background_restrict"

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

    if-eqz v0, :cond_1

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "package_name"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Leg/c;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/miui/firstaidkit/model/internet/BackgroundConnectionModel$b;

    invoke-direct {v4, p0, v3, v2}, Lcom/miui/firstaidkit/model/internet/BackgroundConnectionModel$b;-><init>(Lcom/miui/firstaidkit/model/internet/BackgroundConnectionModel;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v1

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public getButtonTitle()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120463

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

    const/16 v0, 0x2a

    return v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f12189b

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

    iget-object v2, p0, Lcom/miui/firstaidkit/model/internet/BackgroundConnectionModel;->appName:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f1219f9

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ignore()V
    .locals 0

    return-void
.end method

.method public optimize(Landroid/content/Context;)V
    .locals 3

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/app/Activity;

    const-class v0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;

    const/4 v1, 0x0

    const/16 v2, 0x64

    invoke-static {p1, v0, v1, v2}, Lcom/miui/networkassistant/ui/base/UniversalFragmentActivity;->startWithFragmentForResult(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;I)V

    :cond_0
    return-void
.end method

.method public scan()V
    .locals 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/firstaidkit/model/internet/BackgroundConnectionModel;->canRecountTime:Z

    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/firstaidkit/model/internet/BackgroundConnectionModel;->mResolver:Landroid/content/ContentResolver;

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
    if-nez v2, :cond_3

    invoke-static {v1}, Leg/c;->k(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, v1}, Lcom/miui/firstaidkit/model/internet/BackgroundConnectionModel;->queryBackgroundRestricts(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/firstaidkit/model/internet/BackgroundConnectionModel;->spfHelper:Luf/b;

    const-string v4, "BackgroundConnectionModel_BG"

    invoke-virtual {v2, v4}, Luf/b;->i(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    invoke-direct {p0, v1, v2}, Lcom/miui/firstaidkit/model/internet/BackgroundConnectionModel;->isListNew(Ljava/util/List;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-boolean v3, p0, Lcom/miui/firstaidkit/model/internet/BackgroundConnectionModel;->canRecountTime:Z

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/miui/firstaidkit/model/internet/BackgroundConnectionModel;->valueSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/firstaidkit/model/internet/BackgroundConnectionModel$b;

    iget-object v5, p0, Lcom/miui/firstaidkit/model/internet/BackgroundConnectionModel;->valueSet:Ljava/util/Set;

    invoke-static {v4}, Lcom/miui/firstaidkit/model/internet/BackgroundConnectionModel$b;->a(Lcom/miui/firstaidkit/model/internet/BackgroundConnectionModel$b;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move v3, v0

    :cond_2
    if-eqz v3, :cond_3

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/firstaidkit/model/internet/BackgroundConnectionModel$b;

    invoke-static {v0}, Lcom/miui/firstaidkit/model/internet/BackgroundConnectionModel$b;->b(Lcom/miui/firstaidkit/model/internet/BackgroundConnectionModel$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/firstaidkit/model/internet/BackgroundConnectionModel;->appName:Ljava/lang/String;

    sget-object v0, Lcom/miui/securityscan/model/AbsModel$State;->DANGER:Lcom/miui/securityscan/model/AbsModel$State;

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/model/AbsModel;->setSafe(Lcom/miui/securityscan/model/AbsModel$State;)V

    :cond_3
    return-void
.end method
