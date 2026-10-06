.class public Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionActivity;
.super Lmiuix/appcompat/app/AppCompatActivity;
.source "SourceFile"

# interfaces
.implements Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionsViewHandler$a;


# instance fields
.field private a:[Ljava/lang/String;

.field private b:[Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionsViewHandler;

.field private h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private i:I

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmiuix/appcompat/app/AppCompatActivity;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionActivity;->h:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionActivity;->i:I

    const-string v0, "GrantDevicePermissionActivity"

    iput-object v0, p0, Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionActivity;->j:Ljava/lang/String;

    return-void
.end method

.method private c0()V
    .locals 2

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionActivity;->d0(I)V

    iget-object v0, p0, Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionActivity;->g:Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionsViewHandler;

    instance-of v1, v0, Lcom/miui/devicepermission/grantpermission/a;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/miui/devicepermission/grantpermission/a;

    invoke-virtual {v0}, Lcom/miui/devicepermission/grantpermission/a;->d()V

    :cond_0
    return-void
.end method

.method private d0(I)V
    .locals 8

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionActivity;->a:[Ljava/lang/String;

    array-length v1, v1

    new-array v2, v1, [I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    iget-object v4, p0, Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionActivity;->h:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionActivity;->a:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v2, v3

    :cond_0
    iget-object v4, p0, Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionActivity;->j:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionActivity;->a:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionActivity;->h:Ljava/util/HashMap;

    iget-object v7, p0, Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionActivity;->a:[Ljava/lang/String;

    aget-object v7, v7, v3

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionActivity;->a:[Ljava/lang/String;

    const-string v4, "miui.intent.extra.REQUEST_PERMISSIONS_NAMES"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "miui.intent.extra.REQUEST_PERMISSIONS_RESULTS"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionActivity;->j:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setResultIfNeeded: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method

.method private e0()Z
    .locals 10

    :goto_0
    iget v0, p0, Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionActivity;->i:I

    iget-object v1, p0, Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionActivity;->a:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    if-ge v0, v2, :cond_6

    aget-object v0, v1, v0

    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/CharSequence;

    const v4, 0x7f121107

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0}, Ldc/d;->a(Ljava/lang/String;)Ldc/c;

    move-result-object v0

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ldc/c;->d()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const v0, 0x7f120b73

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    goto :goto_1

    :cond_0
    aput-object v5, v2, v4

    :goto_1
    iget-object v0, p0, Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionActivity;->c:Ljava/lang/String;

    iget-object v6, p0, Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionActivity;->a:[Ljava/lang/String;

    iget v7, p0, Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionActivity;->i:I

    aget-object v6, v6, v7

    invoke-static {p0, v0, v6}, Lz4/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v6, 0x3

    const/4 v7, 0x1

    if-ne v0, v6, :cond_1

    const v0, 0x7f12110f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v7

    aput-object v5, v2, v6

    iget-object v0, p0, Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionActivity;->g:Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionsViewHandler;

    iget-object v1, p0, Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionActivity;->a:[Ljava/lang/String;

    iget v3, p0, Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionActivity;->i:I

    aget-object v1, v1, v3

    :goto_2
    iget-object v3, p0, Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionActivity;->d:Ljava/lang/String;

    invoke-interface {v0, v5, v2, v1, v3}, Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionsViewHandler;->a(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    return v7

    :cond_1
    iget-object v0, p0, Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionActivity;->c:Ljava/lang/String;

    iget-object v8, p0, Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionActivity;->a:[Ljava/lang/String;

    iget v9, p0, Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionActivity;->i:I

    aget-object v8, v8, v9

    invoke-static {p0, v0, v8}, Lz4/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ne v0, v7, :cond_2

    aput-object v5, v2, v7

    const v0, 0x7f120b74

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v6

    iget-object v0, p0, Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionActivity;->g:Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionsViewHandler;

    iget-object v1, p0, Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionActivity;->a:[Ljava/lang/String;

    iget v3, p0, Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionActivity;->i:I

    aget-object v1, v1, v3

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionActivity;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionActivity;->a:[Ljava/lang/String;

    iget v5, p0, Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionActivity;->i:I

    aget-object v2, v2, v5

    invoke-static {p0, v0, v2}, Lz4/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionActivity;->h:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionActivity;->a:[Ljava/lang/String;

    iget v2, p0, Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionActivity;->i:I

    aget-object v1, v1, v2

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_3
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_3
    iget-object v0, p0, Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionActivity;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionActivity;->a:[Ljava/lang/String;

    iget v2, p0, Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionActivity;->i:I

    aget-object v1, v1, v2

    invoke-static {p0, v0, v1}, Lz4/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionActivity;->h:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionActivity;->a:[Ljava/lang/String;

    iget v2, p0, Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionActivity;->i:I

    aget-object v1, v1, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionActivity;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionActivity;->a:[Ljava/lang/String;

    iget v2, p0, Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionActivity;->i:I

    aget-object v1, v1, v2

    invoke-static {p0, v0, v1}, Lz4/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ne v0, v4, :cond_5

    iget-object v0, p0, Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionActivity;->h:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionActivity;->a:[Ljava/lang/String;

    iget v2, p0, Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionActivity;->i:I

    aget-object v1, v1, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_3

    :cond_5
    :goto_4
    iget v0, p0, Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionActivity;->i:I

    add-int/2addr v0, v7

    iput v0, p0, Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionActivity;->i:I

    goto/16 :goto_0

    :cond_6
    return v3
.end method


# virtual methods
.method public C(Ljava/lang/String;I)V
    .locals 13

    const/4 v0, -0x1

    if-eq p2, v0, :cond_6

    const/4 v0, 0x1

    if-eqz p2, :cond_4

    if-eq p2, v0, :cond_2

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    const/4 v1, 0x4

    if-eq p2, v1, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v3, p0, Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionActivity;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionActivity;->d:Ljava/lang/String;

    iget v5, p0, Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionActivity;->f:I

    iget-object p2, p0, Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionActivity;->a:[Ljava/lang/String;

    iget v2, p0, Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionActivity;->i:I

    aget-object v6, p2, v2

    const/4 v7, 0x4

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionActivity;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionActivity;->d:Ljava/lang/String;

    iget v5, p0, Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionActivity;->f:I

    iget-object p2, p0, Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionActivity;->a:[Ljava/lang/String;

    iget v2, p0, Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionActivity;->i:I

    aget-object v6, p2, v2

    const/4 v7, 0x2

    :goto_0
    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lz4/b;->k(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    iget-object p2, p0, Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionActivity;->h:Ljava/util/HashMap;

    goto :goto_2

    :cond_2
    invoke-static {p1}, Ldc/d;->a(Ljava/lang/String;)Ldc/c;

    move-result-object p2

    invoke-virtual {p2}, Ldc/c;->d()I

    move-result p2

    and-int/lit8 p2, p2, 0x8

    if-eqz p2, :cond_3

    iget-object v2, p0, Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionActivity;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionActivity;->d:Ljava/lang/String;

    iget v4, p0, Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionActivity;->f:I

    iget-object p2, p0, Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionActivity;->a:[Ljava/lang/String;

    iget v1, p0, Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionActivity;->i:I

    aget-object v5, p2, v1

    const/4 v6, 0x1

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lz4/b;->k(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    goto :goto_1

    :cond_3
    iget-object v8, p0, Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionActivity;->c:Ljava/lang/String;

    iget-object v9, p0, Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionActivity;->d:Ljava/lang/String;

    iget v10, p0, Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionActivity;->f:I

    iget-object p2, p0, Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionActivity;->a:[Ljava/lang/String;

    iget v1, p0, Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionActivity;->i:I

    aget-object v11, p2, v1

    const/4 v12, 0x4

    move-object v7, p0

    invoke-static/range {v7 .. v12}, Lz4/b;->k(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    :goto_1
    iget-object p2, p0, Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionActivity;->h:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_3

    :cond_4
    iget-object v3, p0, Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionActivity;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionActivity;->d:Ljava/lang/String;

    iget v5, p0, Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionActivity;->f:I

    iget-object p2, p0, Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionActivity;->a:[Ljava/lang/String;

    iget v1, p0, Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionActivity;->i:I

    aget-object v6, p2, v1

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lz4/b;->k(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    iget-object p2, p0, Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionActivity;->h:Ljava/util/HashMap;

    const/4 v1, 0x0

    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_3
    invoke-virtual {p2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    iget p1, p0, Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionActivity;->i:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionActivity;->i:I

    invoke-direct {p0}, Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionActivity;->e0()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-direct {p0}, Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionActivity;->c0()V

    :cond_5
    return-void

    :cond_6
    invoke-direct {p0}, Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionActivity;->c0()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "miui.intent.extra.REQUEST_PERMISSIONS_NAMES"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionActivity;->a:[Ljava/lang/String;

    const-string v0, "miui.intent.extra.REQUEST_PERMISSIONS_NAMES_DESC"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionActivity;->b:[Ljava/lang/String;

    const-string v0, "miui.intent.extra.DEVICE_UNIQUE_NAME"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionActivity;->c:Ljava/lang/String;

    const-string v0, "miui.intent.extra.DEVICE_DISPLAY_NAME"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionActivity;->d:Ljava/lang/String;

    const-string v0, "miui.intent.extra.OWNER_PACKAGE"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionActivity;->e:Ljava/lang/String;

    const-string v0, "miui.intent.extra.DEVICE_TYPE"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionActivity;->f:I

    invoke-static {}, Lcom/miui/permcenter/o;->w()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionActivity;->j:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/miui/permcenter/o;->w()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionActivity;->a:[Ljava/lang/String;

    if-eqz p1, :cond_5

    array-length p1, p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionActivity;->b:[Ljava/lang/String;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionActivity;->b:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_3

    aget-object v1, v1, v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionActivity;->a:[Ljava/lang/String;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionActivity;->b:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/miui/devicepermission/grantpermission/a;

    invoke-direct {v0, p0, p1}, Lcom/miui/devicepermission/grantpermission/a;-><init>(Landroid/app/Activity;Ljava/util/HashMap;)V

    invoke-virtual {v0, p0}, Lcom/miui/devicepermission/grantpermission/a;->e(Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionsViewHandler$a;)Lcom/miui/devicepermission/grantpermission/a;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionActivity;->g:Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionsViewHandler;

    invoke-direct {p0}, Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionActivity;->e0()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionActivity;->j:Ljava/lang/String;

    const-string v0, "setResultAndFinish"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionActivity;->c0()V

    :cond_4
    return-void

    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionActivity;->j:Ljava/lang/String;

    const-string v0, "deviceRequestPermissions == null"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionActivity;->c0()V

    return-void
.end method

.method protected onDestroy()V
    .locals 6

    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onDestroy()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionActivity;->j:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/os/IBinder;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    aput-object v4, v2, v5

    const-string v4, "windowDismissed"

    invoke-static {v1, v0, v4, v3, v2}, Lbh/e;->b(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
