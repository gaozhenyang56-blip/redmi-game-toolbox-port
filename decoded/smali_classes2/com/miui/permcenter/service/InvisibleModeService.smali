.class public Lcom/miui/permcenter/service/InvisibleModeService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/permcenter/service/InvisibleModeService$a;
    }
.end annotation


# static fields
.field private static final f:Landroid/os/Binder;

.field private static final g:Landroid/os/Binder;

.field private static final h:Landroid/os/Binder;


# instance fields
.field private final a:[I

.field private final b:[Ljava/lang/String;

.field private final c:[Ljava/lang/String;

.field private final d:[Ljava/lang/String;

.field private e:Landroid/app/AppOpsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    sput-object v0, Lcom/miui/permcenter/service/InvisibleModeService;->f:Landroid/os/Binder;

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    sput-object v0, Lcom/miui/permcenter/service/InvisibleModeService;->g:Landroid/os/Binder;

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    sput-object v0, Lcom/miui/permcenter/service/InvisibleModeService;->h:Landroid/os/Binder;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/miui/permcenter/service/InvisibleModeService;->a:[I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_0

    sget-boolean v0, Lmc/c;->g:Z

    if-eqz v0, :cond_0

    const-string v0, "com.android.camera"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/miui/permcenter/service/InvisibleModeService;->b:[Ljava/lang/String;

    const-string v0, "com.miui.face"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/permcenter/service/InvisibleModeService;->c:[Ljava/lang/String;

    const-string v0, "com.miui.voicetrigger"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/permcenter/service/InvisibleModeService;->d:[Ljava/lang/String;

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x29
        0x2a
        0x1b
        0x1a
    .end array-data
.end method

.method private a(IZLandroid/os/IBinder;[Ljava/lang/String;I)V
    .locals 14

    move-object v0, p0

    move-object/from16 v1, p4

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v3, "setUserRestrictionForUser"

    const-string v4, "InvisibleModeService"

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x5

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/16 v11, 0x1e

    if-le v2, v11, :cond_2

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    array-length v11, v1

    if-lez v11, :cond_1

    new-instance v2, Landroid/os/PackageTagsList$Builder;

    invoke-direct {v2}, Landroid/os/PackageTagsList$Builder;-><init>()V

    array-length v11, v1

    move v12, v10

    :goto_0
    if-ge v12, v11, :cond_0

    aget-object v13, v1, v12

    invoke-virtual {v2, v13}, Landroid/os/PackageTagsList$Builder;->add(Ljava/lang/String;)Landroid/os/PackageTagsList$Builder;

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/os/PackageTagsList$Builder;->build()Landroid/os/PackageTagsList;

    move-result-object v2

    :cond_1
    iget-object v1, v0, Lcom/miui/permcenter/service/InvisibleModeService;->e:Landroid/app/AppOpsManager;

    new-array v11, v8, [Ljava/lang/Class;

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v11, v10

    sget-object v13, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v13, v11, v9

    const-class v13, Landroid/os/IBinder;

    aput-object v13, v11, v7

    const-class v13, Landroid/os/PackageTagsList;

    aput-object v13, v11, v6

    aput-object v12, v11, v5

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v8, v10

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    aput-object p3, v8, v7

    aput-object v2, v8, v6

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v8, v5

    invoke-static {v4, v1, v3, v11, v8}, Lbh/e;->b(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iget-object v2, v0, Lcom/miui/permcenter/service/InvisibleModeService;->e:Landroid/app/AppOpsManager;

    new-array v11, v8, [Ljava/lang/Class;

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v11, v10

    sget-object v13, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v13, v11, v9

    const-class v13, Landroid/os/IBinder;

    aput-object v13, v11, v7

    const-class v13, [Ljava/lang/String;

    aput-object v13, v11, v6

    aput-object v12, v11, v5

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v8, v10

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    aput-object p3, v8, v7

    aput-object v1, v8, v6

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v8, v5

    invoke-static {v4, v2, v3, v11, v8}, Lbh/e;->b(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void
.end method

.method private b()V
    .locals 15

    sget-boolean v0, Lcom/miui/permcenter/o;->m:Z

    if-nez v0, :cond_0

    const-string v0, "InvisibleModeService"

    const-string v1, "not support invisible mode!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/permcenter/service/InvisibleModeService;->e:Landroid/app/AppOpsManager;

    if-nez v0, :cond_1

    const-string v0, "appops"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/miui/permcenter/service/InvisibleModeService;->e:Landroid/app/AppOpsManager;

    :cond_1
    invoke-static {p0}, Lcom/miui/permcenter/o$a;->b(Landroid/content/Context;)Z

    move-result v0

    invoke-static {}, Lx4/z1;->r()Z

    move-result v1

    const/4 v7, 0x0

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    new-array v1, v1, [I

    invoke-static {}, Lx4/z1;->y()I

    move-result v2

    aput v2, v1, v7

    :goto_0
    move-object v8, v1

    array-length v9, v8

    move v10, v7

    :goto_1
    if-ge v10, v9, :cond_6

    aget v11, v8, v10

    iget-object v12, p0, Lcom/miui/permcenter/service/InvisibleModeService;->a:[I

    array-length v13, v12

    move v14, v7

    :goto_2
    if-ge v14, v13, :cond_5

    aget v2, v12, v14

    const/16 v1, 0x1b

    if-ne v2, v1, :cond_3

    sget-object v4, Lcom/miui/permcenter/service/InvisibleModeService;->h:Landroid/os/Binder;

    iget-object v5, p0, Lcom/miui/permcenter/service/InvisibleModeService;->d:[Ljava/lang/String;

    move-object v1, p0

    move v3, v0

    move v6, v11

    invoke-direct/range {v1 .. v6}, Lcom/miui/permcenter/service/InvisibleModeService;->a(IZLandroid/os/IBinder;[Ljava/lang/String;I)V

    goto :goto_3

    :cond_3
    const/16 v1, 0x1a

    if-ne v2, v1, :cond_4

    sget-object v4, Lcom/miui/permcenter/service/InvisibleModeService;->g:Landroid/os/Binder;

    iget-object v5, p0, Lcom/miui/permcenter/service/InvisibleModeService;->c:[Ljava/lang/String;

    move-object v1, p0

    move v3, v0

    move v6, v11

    invoke-direct/range {v1 .. v6}, Lcom/miui/permcenter/service/InvisibleModeService;->a(IZLandroid/os/IBinder;[Ljava/lang/String;I)V

    goto :goto_3

    :cond_4
    sget-object v4, Lcom/miui/permcenter/service/InvisibleModeService;->f:Landroid/os/Binder;

    iget-object v5, p0, Lcom/miui/permcenter/service/InvisibleModeService;->b:[Ljava/lang/String;

    move-object v1, p0

    move v3, v0

    move v6, v11

    invoke-direct/range {v1 .. v6}, Lcom/miui/permcenter/service/InvisibleModeService;->a(IZLandroid/os/IBinder;[Ljava/lang/String;I)V

    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_6
    invoke-static {p0, v0}, Lcom/miui/permcenter/service/InvisibleModeService$a;->b(Landroid/content/Context;Z)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.miui.action.sync_status_bar"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "miui.permission.READ_AND_WIRTE_PERMISSION_MANAGER"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    if-nez v0, :cond_7

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    :cond_7
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3e7
    .end array-data
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    invoke-direct {p0}, Lcom/miui/permcenter/service/InvisibleModeService;->b()V

    const/4 p1, 0x2

    return p1
.end method
