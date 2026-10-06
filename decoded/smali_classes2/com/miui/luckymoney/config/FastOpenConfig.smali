.class public Lcom/miui/luckymoney/config/FastOpenConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "FastOpenConfig"

.field private static sInstance:Lcom/miui/luckymoney/config/FastOpenConfig;


# instance fields
.field private mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

.field private mRestricts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/miui/luckymoney/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/luckymoney/config/CommonConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/luckymoney/config/FastOpenConfig;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {p1}, Lcom/miui/luckymoney/config/CommonConfig;->getFastOpenConfig()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/luckymoney/config/FastOpenConfig;->mRestricts:Ljava/util/ArrayList;

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    sget-object v0, Lcom/miui/luckymoney/config/AppConstants;->FastOpenRestricts:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/miui/luckymoney/config/FastOpenConfig;->mRestricts:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/miui/luckymoney/config/FastOpenConfig;->saveConfig()V

    :cond_0
    sget-object p1, Lcom/miui/luckymoney/config/FastOpenConfig;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mRestricts:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/luckymoney/config/FastOpenConfig;->mRestricts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private add(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/miui/luckymoney/config/FastOpenConfig;->mRestricts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/luckymoney/config/FastOpenConfig;->mRestricts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    return v1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/miui/luckymoney/config/FastOpenConfig;
    .locals 2

    const-class v0, Lcom/miui/luckymoney/config/FastOpenConfig;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/luckymoney/config/FastOpenConfig;->sInstance:Lcom/miui/luckymoney/config/FastOpenConfig;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/luckymoney/config/FastOpenConfig;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/miui/luckymoney/config/FastOpenConfig;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/miui/luckymoney/config/FastOpenConfig;->sInstance:Lcom/miui/luckymoney/config/FastOpenConfig;

    :cond_0
    sget-object p0, Lcom/miui/luckymoney/config/FastOpenConfig;->sInstance:Lcom/miui/luckymoney/config/FastOpenConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private remove(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/config/FastOpenConfig;->mRestricts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/config/FastOpenConfig;->mRestricts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isRestrict(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/config/FastOpenConfig;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v0}, Lcom/miui/luckymoney/config/CommonConfig;->getFastOpenConfig()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public saveConfig()V
    .locals 2

    iget-object v0, p0, Lcom/miui/luckymoney/config/FastOpenConfig;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    iget-object v1, p0, Lcom/miui/luckymoney/config/FastOpenConfig;->mRestricts:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/miui/luckymoney/config/CommonConfig;->setFastOpenConfig(Ljava/util/ArrayList;)V

    return-void
.end method

.method public set(Ljava/lang/String;Z)Z
    .locals 0

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/miui/luckymoney/config/FastOpenConfig;->remove(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/luckymoney/config/FastOpenConfig;->add(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
