.class public Lcom/miui/combinepermission/grantpermission/CombinePermissionActivity;
.super Lmiuix/appcompat/app/AppCompatActivity;
.source "SourceFile"


# static fields
.field private static m:Ljava/lang/String; = "CombinePermissionActivity"

.field public static n:Ljava/lang/String; = "miui.intent.action.CTA_REQUEST_PERMISSIONS_COMBINE"


# instance fields
.field a:Ljava/lang/String;

.field b:Z

.field c:Ljava/lang/String;

.field d:[Ljava/lang/String;

.field e:[Ljava/lang/String;

.field f:[I

.field g:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Long;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field h:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field i:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field j:I

.field private k:Lmiuix/bottomsheet/i;

.field private l:Lcom/miui/combinepermission/grantpermission/a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmiuix/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/combinepermission/grantpermission/CombinePermissionActivity;->b:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/miui/combinepermission/grantpermission/CombinePermissionActivity;->c:Ljava/lang/String;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/combinepermission/grantpermission/CombinePermissionActivity;->g:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/combinepermission/grantpermission/CombinePermissionActivity;->h:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/combinepermission/grantpermission/CombinePermissionActivity;->i:Ljava/util/LinkedHashMap;

    return-void
.end method

.method private c0()V
    .locals 1

    iget-object v0, p0, Lcom/miui/combinepermission/grantpermission/CombinePermissionActivity;->k:Lmiuix/bottomsheet/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/bottomsheet/i;->w()V

    :cond_0
    iget-object v0, p0, Lcom/miui/combinepermission/grantpermission/CombinePermissionActivity;->l:Lcom/miui/combinepermission/grantpermission/a;

    invoke-virtual {v0}, Lcom/miui/combinepermission/grantpermission/a;->i()Lmiuix/bottomsheet/i;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/combinepermission/grantpermission/CombinePermissionActivity;->k:Lmiuix/bottomsheet/i;

    invoke-virtual {v0}, Lmiuix/bottomsheet/i;->L()V

    return-void
.end method

.method private d0(Landroid/content/pm/PackageInfo;[Ljava/lang/String;[Ljava/lang/String;[IZ)V
    .locals 4

    sget-object p5, Lg4/b;->a:Lg4/b;

    invoke-virtual {p5, p2, p3, p4}, Lg4/b;->g([Ljava/lang/String;[Ljava/lang/String;[I)Ljava/util/LinkedHashMap;

    move-result-object p2

    const-string p3, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p2, p3}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const-string p3, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p2, p3}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string p3, "android.permission.BODY_SENSORS_BACKGROUND"

    invoke-virtual {p2, p3}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-virtual {p2, p3}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p3, p0, Lcom/miui/combinepermission/grantpermission/CombinePermissionActivity;->g:Ljava/util/LinkedHashMap;

    invoke-virtual {p3}, Ljava/util/LinkedHashMap;->clear()V

    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    sget-object p5, Lcom/miui/combinepermission/grantpermission/CombinePermissionActivity;->m:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "filterPermission "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p5, Lg4/b;->a:Lg4/b;

    iget-boolean v0, p0, Lcom/miui/combinepermission/grantpermission/CombinePermissionActivity;->b:Z

    invoke-virtual {p5, p0, p1, p4, v0}, Lg4/b;->n(Landroid/content/Context;Landroid/content/pm/PackageInfo;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p3, Lcom/miui/combinepermission/grantpermission/CombinePermissionActivity;->m:Ljava/lang/String;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "filterPermission !shouldShowPermission"

    :goto_1
    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    sget-object v0, Lg4/b;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/miui/permission/RequiredPermissionsUtil;->RUNTIME_PERMISSIONS:Ljava/util/Map;

    invoke-interface {v0, p4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object p3, Lcom/miui/combinepermission/grantpermission/CombinePermissionActivity;->m:Ljava/lang/String;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "filterPermission !RUNTIME_PERMISSIONS"

    goto :goto_1

    :cond_2
    invoke-virtual {p5, p0, p4}, Lg4/b;->e(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p5, v0, v2

    if-eqz p5, :cond_4

    iget-object p5, p0, Lcom/miui/combinepermission/grantpermission/CombinePermissionActivity;->g:Ljava/util/LinkedHashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p5, v2}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_3

    iget-object p3, p0, Lcom/miui/combinepermission/grantpermission/CombinePermissionActivity;->g:Ljava/util/LinkedHashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_3
    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p5, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p4, p0, Lcom/miui/combinepermission/grantpermission/CombinePermissionActivity;->g:Ljava/util/LinkedHashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p4, v2, p5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Loj/l;

    iget-object p4, p0, Lcom/miui/combinepermission/grantpermission/CombinePermissionActivity;->h:Ljava/util/LinkedHashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    invoke-virtual {p3}, Loj/l;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p4, p5, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p4, p0, Lcom/miui/combinepermission/grantpermission/CombinePermissionActivity;->i:Ljava/util/LinkedHashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    invoke-virtual {p3}, Loj/l;->d()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p4, p5, p3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_4
    sget-object p3, Lcom/miui/combinepermission/grantpermission/CombinePermissionActivity;->m:Ljava/lang/String;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "filterPermission permId == -1"

    goto/16 :goto_1

    :cond_5
    return-void
.end method

.method private e0(I)V
    .locals 7

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/miui/combinepermission/grantpermission/CombinePermissionActivity;->d:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [I

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/miui/combinepermission/grantpermission/CombinePermissionActivity;->d:[Ljava/lang/String;

    array-length v4, v3

    if-ge v2, v4, :cond_0

    aget-object v3, v3, v2

    sget-object v4, Lg4/b;->a:Lg4/b;

    iget-object v5, p0, Lcom/miui/combinepermission/grantpermission/CombinePermissionActivity;->a:Ljava/lang/String;

    iget v6, p0, Lcom/miui/combinepermission/grantpermission/CombinePermissionActivity;->j:I

    invoke-virtual {v4, p0, v3, v5, v6}, Lg4/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    aput v4, v1, v2

    sget-object v4, Lcom/miui/combinepermission/grantpermission/CombinePermissionActivity;->m:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setResultIfNeeded "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, v1, v2

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v2, "miui.intent.extra.REQUEST_PERMISSIONS_NAMES"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "miui.intent.extra.REQUEST_PERMISSIONS_RESULTS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {p0}, Lmiuix/appcompat/app/LayoutUiModeHelper;->autoSetLayoutUiMode(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/miui/combinepermission/grantpermission/CombinePermissionActivity;->l:Lcom/miui/combinepermission/grantpermission/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/miui/combinepermission/grantpermission/a;->o(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lmiuix/appcompat/app/LayoutUiModeHelper;->autoSetLayoutUiMode(Landroid/app/Activity;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/combinepermission/grantpermission/CombinePermissionActivity;->a:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "miui.intent.extra.REQUEST_PERMISSIONS_NAMES"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/combinepermission/grantpermission/CombinePermissionActivity;->d:[Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "miui.intent.extra.REQUEST_PERMISSIONS_NAMES_DESC"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/combinepermission/grantpermission/CombinePermissionActivity;->e:[Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "miui.intent.extra.KEY_REQUEST_PERMISSIONS_STATE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object p1

    iput-object p1, p0, Lcom/miui/combinepermission/grantpermission/CombinePermissionActivity;->f:[I

    iget-object p1, p0, Lcom/miui/combinepermission/grantpermission/CombinePermissionActivity;->d:[Ljava/lang/String;

    if-eqz p1, :cond_7

    array-length p1, p1

    if-nez p1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "miui.intent.extra.PERMISSIONS_DIALOG_DESC"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/combinepermission/grantpermission/CombinePermissionActivity;->c:Ljava/lang/String;

    invoke-static {}, Lx4/z1;->y()I

    move-result p1

    iput p1, p0, Lcom/miui/combinepermission/grantpermission/CombinePermissionActivity;->j:I

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/miui/combinepermission/grantpermission/CombinePermissionActivity;->n:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/combinepermission/grantpermission/CombinePermissionActivity;->b:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "miui.intent.extra.PACKAGE_NAME"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/combinepermission/grantpermission/CombinePermissionActivity;->a:Ljava/lang/String;

    :cond_1
    iget-object p1, p0, Lcom/miui/combinepermission/grantpermission/CombinePermissionActivity;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/miui/combinepermission/grantpermission/CombinePermissionActivity;->m:Ljava/lang/String;

    const-string v0, "mPackageName isEmpty"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void

    :cond_2
    sget-object p1, Lg4/b;->a:Lg4/b;

    iget-object v0, p0, Lcom/miui/combinepermission/grantpermission/CombinePermissionActivity;->a:Ljava/lang/String;

    iget v1, p0, Lcom/miui/combinepermission/grantpermission/CombinePermissionActivity;->j:I

    invoke-virtual {p1, p0, v0, v1}, Lg4/b;->c(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-nez v3, :cond_3

    sget-object p1, Lcom/miui/combinepermission/grantpermission/CombinePermissionActivity;->m:Ljava/lang/String;

    const-string v0, "packageInfo == null"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void

    :cond_3
    iget-object v4, p0, Lcom/miui/combinepermission/grantpermission/CombinePermissionActivity;->d:[Ljava/lang/String;

    iget-object v5, p0, Lcom/miui/combinepermission/grantpermission/CombinePermissionActivity;->e:[Ljava/lang/String;

    iget-object v6, p0, Lcom/miui/combinepermission/grantpermission/CombinePermissionActivity;->f:[I

    iget-boolean v7, p0, Lcom/miui/combinepermission/grantpermission/CombinePermissionActivity;->b:Z

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/miui/combinepermission/grantpermission/CombinePermissionActivity;->d0(Landroid/content/pm/PackageInfo;[Ljava/lang/String;[Ljava/lang/String;[IZ)V

    iget-object p1, p0, Lcom/miui/combinepermission/grantpermission/CombinePermissionActivity;->g:Ljava/util/LinkedHashMap;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    :try_start_0
    const-string p1, "getLaunchedFromUid"

    const-class v0, Landroid/app/Activity;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, p1, v0, v1, v2}, Lcom/miui/permission/support/util/ReflectUtil;->callObjectMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lx4/z1;->m(I)I

    move-result p1

    iput p1, p0, Lcom/miui/combinepermission/grantpermission/CombinePermissionActivity;->j:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lcom/miui/combinepermission/grantpermission/CombinePermissionActivity;->m:Ljava/lang/String;

    const-string v1, "getUserId"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-object p1, p0, Lcom/miui/combinepermission/grantpermission/CombinePermissionActivity;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/combinepermission/grantpermission/CombinePermissionActivity;->d:[Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/combinepermission/grantpermission/CombinePermissionActivity;->e:[Ljava/lang/String;

    invoke-static {p0, p1, v0, v1}, Lg4/a;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    new-instance p1, Lcom/miui/combinepermission/grantpermission/a;

    iget-object v4, p0, Lcom/miui/combinepermission/grantpermission/CombinePermissionActivity;->a:Ljava/lang/String;

    iget v5, p0, Lcom/miui/combinepermission/grantpermission/CombinePermissionActivity;->j:I

    iget-object v6, p0, Lcom/miui/combinepermission/grantpermission/CombinePermissionActivity;->c:Ljava/lang/String;

    iget-object v7, p0, Lcom/miui/combinepermission/grantpermission/CombinePermissionActivity;->d:[Ljava/lang/String;

    iget-object v8, p0, Lcom/miui/combinepermission/grantpermission/CombinePermissionActivity;->g:Ljava/util/LinkedHashMap;

    iget-object v9, p0, Lcom/miui/combinepermission/grantpermission/CombinePermissionActivity;->h:Ljava/util/LinkedHashMap;

    iget-object v10, p0, Lcom/miui/combinepermission/grantpermission/CombinePermissionActivity;->i:Ljava/util/LinkedHashMap;

    iget-boolean v11, p0, Lcom/miui/combinepermission/grantpermission/CombinePermissionActivity;->b:Z

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v11}, Lcom/miui/combinepermission/grantpermission/a;-><init>(Lmiuix/appcompat/app/AppCompatActivity;Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;Z)V

    iput-object p1, p0, Lcom/miui/combinepermission/grantpermission/CombinePermissionActivity;->l:Lcom/miui/combinepermission/grantpermission/a;

    invoke-direct {p0}, Lcom/miui/combinepermission/grantpermission/CombinePermissionActivity;->c0()V

    return-void

    :cond_5
    :goto_1
    sget-object p1, Lcom/miui/combinepermission/grantpermission/CombinePermissionActivity;->m:Ljava/lang/String;

    const-string v0, "mPermissionIDMap.isEmpty()"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p0, Lcom/miui/combinepermission/grantpermission/CombinePermissionActivity;->b:Z

    if-nez p1, :cond_6

    const/4 p1, -0x1

    invoke-direct {p0, p1}, Lcom/miui/combinepermission/grantpermission/CombinePermissionActivity;->e0(I)V

    :cond_6
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void

    :cond_7
    :goto_2
    sget-object p1, Lcom/miui/combinepermission/grantpermission/CombinePermissionActivity;->m:Ljava/lang/String;

    const-string v0, "mRequestPermission == null"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    invoke-static {p0}, Lmiuix/appcompat/app/LayoutUiModeHelper;->autoSetLayoutUiMode(Landroid/app/Activity;)V

    return-void
.end method
