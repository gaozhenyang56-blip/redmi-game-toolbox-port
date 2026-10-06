.class public Lcom/miui/networkassistant/utils/IconCacheHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ICON_DELETED_APP:Ljava/lang/String; = "icon_deleted_app"

.field public static final ICON_MANAGED_PROFILE:Ljava/lang/String; = "magaged_profile_package"

.field public static final ICON_MI_STATS:Ljava/lang/String; = "com.xiaomi.mistatistic"

.field public static final ICON_OTHERS:Ljava/lang/String; = "icon_others"

.field public static final ICON_PERSONAL_HOTPOT:Ljava/lang/String; = "icon_personal_hotpot"

.field public static final ICON_ROOT:Ljava/lang/String; = "icon_root"

.field public static final ICON_SYSTEM_APP:Ljava/lang/String; = "icon_system_app"

.field private static sInstance:Lcom/miui/networkassistant/utils/IconCacheHelper;


# instance fields
.field private mCustomizedIconMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/utils/IconCacheHelper;->mCustomizedIconMap:Ljava/util/HashMap;

    const v1, 0x7f080994

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "icon_system_app"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/networkassistant/utils/IconCacheHelper;->mCustomizedIconMap:Ljava/util/HashMap;

    const v2, 0x7f080959

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "icon_deleted_app"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/networkassistant/utils/IconCacheHelper;->mCustomizedIconMap:Ljava/util/HashMap;

    const v2, 0x7f08097d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "icon_personal_hotpot"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/networkassistant/utils/IconCacheHelper;->mCustomizedIconMap:Ljava/util/HashMap;

    const-string v2, "icon_root"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/networkassistant/utils/IconCacheHelper;->mCustomizedIconMap:Ljava/util/HashMap;

    const-string v2, "icon_others"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/networkassistant/utils/IconCacheHelper;->mCustomizedIconMap:Ljava/util/HashMap;

    const v1, 0x7f080822

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "com.xiaomi.mistatistic"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/networkassistant/utils/IconCacheHelper;->mCustomizedIconMap:Ljava/util/HashMap;

    const v1, 0x7f08081f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "magaged_profile_package"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/miui/networkassistant/utils/IconCacheHelper;
    .locals 2

    const-class v0, Lcom/miui/networkassistant/utils/IconCacheHelper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/networkassistant/utils/IconCacheHelper;->sInstance:Lcom/miui/networkassistant/utils/IconCacheHelper;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/networkassistant/utils/IconCacheHelper;

    invoke-direct {v1}, Lcom/miui/networkassistant/utils/IconCacheHelper;-><init>()V

    sput-object v1, Lcom/miui/networkassistant/utils/IconCacheHelper;->sInstance:Lcom/miui/networkassistant/utils/IconCacheHelper;

    :cond_0
    sget-object v1, Lcom/miui/networkassistant/utils/IconCacheHelper;->sInstance:Lcom/miui/networkassistant/utils/IconCacheHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public setIconToImageView(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 2

    invoke-static {p2}, Lcom/miui/networkassistant/utils/PackageUtil;->isXSpaceApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/miui/networkassistant/utils/PackageUtil;->getRealPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "pkg_icon_xspace://"

    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/utils/IconCacheHelper;->mCustomizedIconMap:Ljava/util/HashMap;

    invoke-static {p2}, Lcom/miui/networkassistant/utils/PackageUtil;->getRealPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "drawable://"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_1
    invoke-static {p2}, Lcom/miui/networkassistant/utils/PackageUtil;->isManagedProfileApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "&@"

    const-string v1, "/"

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "pkg_icon_managed_profile://"

    goto :goto_0

    :cond_2
    const-string v0, "pkg_icon://"

    goto :goto_0

    :goto_1
    sget-object v0, Lx4/o0;->g:Lrh/c;

    invoke-static {p2, p1, v0}, Lx4/o0;->d(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;)V

    return-void
.end method
