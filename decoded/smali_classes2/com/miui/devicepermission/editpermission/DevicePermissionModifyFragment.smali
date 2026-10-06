.class public final Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;
.super Lmiuix/preference/PreferenceFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lwb/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment$a;
    }
.end annotation


# static fields
.field public static final j:Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field static final synthetic k:[Lhk/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lhk/h<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/miui/permcenter/permissions/RadioButtonPreference;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private c:Lz4/a;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field private final f:Ldk/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final g:Ldk/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final h:Ldk/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private i:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x3

    new-array v0, v0, [Lhk/h;

    new-instance v1, Lbk/p;

    const-class v2, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;

    const-string v3, "deviceType"

    const-string v4, "getDeviceType()I"

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lbk/p;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lbk/z;->d(Lbk/o;)Lhk/e;

    move-result-object v1

    aput-object v1, v0, v5

    new-instance v1, Lbk/p;

    const-class v2, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;

    const-string v3, "permissionAction"

    const-string v4, "getPermissionAction()I"

    invoke-direct {v1, v2, v3, v4, v5}, Lbk/p;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lbk/z;->d(Lbk/o;)Lhk/e;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lbk/p;

    const-class v2, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;

    const-string v3, "permissionFlag"

    const-string v4, "getPermissionFlag()I"

    invoke-direct {v1, v2, v3, v4, v5}, Lbk/p;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lbk/z;->d(Lbk/o;)Lhk/e;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;->k:[Lhk/h;

    new-instance v0, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment$a;-><init>(Lbk/g;)V

    sput-object v0, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;->j:Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;-><init>()V

    sget-object v0, Ldk/a;->a:Ldk/a;

    invoke-virtual {v0}, Ldk/a;->a()Ldk/c;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;->f:Ldk/c;

    invoke-virtual {v0}, Ldk/a;->a()Ldk/c;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;->g:Ldk/c;

    invoke-virtual {v0}, Ldk/a;->a()Ldk/c;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;->h:Ldk/c;

    return-void
.end method

.method public static final synthetic a0(Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;)I
    .locals 0

    invoke-direct {p0}, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;->f0()I

    move-result p0

    return p0
.end method

.method public static final synthetic b0(Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic c0(Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;->n0()V

    return-void
.end method

.method private final f0()I
    .locals 3

    iget-object v0, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;->f:Ldk/c;

    sget-object v1, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;->k:[Lhk/h;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Ldk/c;->a(Ljava/lang/Object;Lhk/h;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private final k0(I)V
    .locals 3

    iget-object v0, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;->f:Ldk/c;

    sget-object v1, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;->k:[Lhk/h;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p0, v1, p1}, Ldk/c;->b(Ljava/lang/Object;Lhk/h;Ljava/lang/Object;)V

    return-void
.end method

.method private final n0()V
    .locals 3

    invoke-virtual {p0}, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;->g0()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_3

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;->h0()I

    move-result v0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;->a:Lcom/miui/permcenter/permissions/RadioButtonPreference;

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;->a:Lcom/miui/permcenter/permissions/RadioButtonPreference;

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;->a:Lcom/miui/permcenter/permissions/RadioButtonPreference;

    if-eqz v0, :cond_5

    :goto_0
    invoke-virtual {v0, v1}, Lcom/miui/permcenter/permissions/RadioButtonPreference;->k(Z)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;->a:Lcom/miui/permcenter/permissions/RadioButtonPreference;

    if-eqz v0, :cond_5

    :goto_1
    invoke-virtual {v0, v1}, Lcom/miui/permcenter/permissions/RadioButtonPreference;->f(Z)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;->a:Lcom/miui/permcenter/permissions/RadioButtonPreference;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v1}, Lcom/miui/permcenter/permissions/RadioButtonPreference;->d(Z)V

    :cond_5
    :goto_2
    return-void
.end method


# virtual methods
.method public final d0()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "deviceId"

    invoke-static {v0}, Lbk/m;->r(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final e0()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "deviceName"

    invoke-static {v0}, Lbk/m;->r(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final g0()I
    .locals 3

    iget-object v0, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;->g:Ldk/c;

    sget-object v1, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;->k:[Lhk/h;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Ldk/c;->a(Ljava/lang/Object;Lhk/h;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final h0()I
    .locals 3

    iget-object v0, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;->h:Ldk/c;

    sget-object v1, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;->k:[Lhk/h;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Ldk/c;->a(Ljava/lang/Object;Lhk/h;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final i0(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;->d:Ljava/lang/String;

    return-void
.end method

.method public final j0(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;->e:Ljava/lang/String;

    return-void
.end method

.method public final l0(I)V
    .locals 3

    iget-object v0, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;->g:Ldk/c;

    sget-object v1, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;->k:[Lhk/h;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p0, v1, p1}, Ldk/c;->b(Ljava/lang/Object;Lhk/h;Ljava/lang/Object;)V

    return-void
.end method

.method public final m0(I)V
    .locals 3

    iget-object v0, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;->h:Ldk/c;

    sget-object v1, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;->k:[Lhk/h;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p0, v1, p1}, Ldk/c;->b(Ljava/lang/Object;Lhk/h;Ljava/lang/Object;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 14
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const v0, 0x7f0b08aa

    const/4 v1, 0x0

    if-nez p1, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v0, :cond_2

    const/4 p1, 0x4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;->i:Ljava/lang/Integer;

    invoke-virtual {p0, v1}, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;->m0(I)V

    goto :goto_4

    :cond_2
    :goto_2
    const v0, 0x7f0b08af

    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v0, :cond_4

    const/4 p1, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;->i:Ljava/lang/Integer;

    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;->m0(I)V

    goto :goto_4

    :cond_4
    :goto_3
    const v0, 0x7f0b08a8

    if-nez p1, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v0, :cond_6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    :cond_6
    :goto_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;->d0()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;->e0()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;->g0()I

    move-result v6

    iget-object p1, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;->i:Ljava/lang/Integer;

    invoke-static {p1}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static/range {v2 .. v7}, Lz4/b;->j(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {p0}, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;->d0()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;->e0()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0}, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;->f0()I

    move-result v11

    iget-object v12, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;->b:Ljava/lang/String;

    iget-object p1, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;->i:Ljava/lang/Integer;

    invoke-static {p1}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static/range {v8 .. v13}, Lz4/b;->k(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    iget-object p1, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;->i:Ljava/lang/Integer;

    const-string v0, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p1, v0}, Lbk/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;->l0(I)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lmiuix/preference/PreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;->a:Lcom/miui/permcenter/permissions/RadioButtonPreference;

    if-eqz p1, :cond_c

    iget-object v0, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;->i:Ljava/lang/Integer;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;->g0()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_0
    const/4 v1, 0x1

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1, v1}, Lcom/miui/permcenter/permissions/RadioButtonPreference;->d(Z)V

    goto :goto_9

    :cond_2
    :goto_0
    const/4 v2, 0x2

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_4

    :goto_1
    invoke-virtual {p1, v1}, Lcom/miui/permcenter/permissions/RadioButtonPreference;->k(Z)V

    goto :goto_9

    :cond_4
    :goto_2
    const/4 v2, 0x3

    if-nez v0, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_7

    invoke-virtual {p0}, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;->h0()I

    move-result v0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_6

    goto :goto_1

    :cond_6
    :goto_3
    invoke-virtual {p1, v1}, Lcom/miui/permcenter/permissions/RadioButtonPreference;->f(Z)V

    goto :goto_9

    :cond_7
    :goto_4
    if-nez v0, :cond_8

    goto :goto_6

    :cond_8
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_9

    :goto_5
    move v0, v1

    goto :goto_8

    :cond_9
    :goto_6
    const/4 v2, 0x4

    if-nez v0, :cond_a

    goto :goto_7

    :cond_a
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_b

    goto :goto_5

    :cond_b
    :goto_7
    const/4 v0, 0x0

    :goto_8
    if-eqz v0, :cond_c

    goto :goto_3

    :cond_c
    :goto_9
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 6
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const v0, 0x7f150022

    invoke-virtual {p0, v0, p2}, Landroidx/preference/PreferenceFragmentCompat;->setPreferencesFromResource(ILjava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string v0, "device_permission_info"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.miui.devicepermission.DevicePermissionInfo"

    invoke-static {v0, v1}, Lbk/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lz4/a;

    iput-object v0, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;->c:Lz4/a;

    const-string v0, "device_permission"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;->b:Ljava/lang/String;

    :cond_0
    iget-object p2, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;->c:Lz4/a;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lz4/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;->i0(Ljava/lang/String;)V

    invoke-virtual {p2}, Lz4/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;->j0(Ljava/lang/String;)V

    invoke-virtual {p2}, Lz4/a;->c()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;->k0(I)V

    if-eqz p1, :cond_1

    const-string v0, "save_permissionAction"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lz4/a;->d()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lbk/m;->b(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;->l0(I)V

    if-eqz p1, :cond_2

    const-string p2, "save_permissionFlag"

    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Lz4/a;->e()Ljava/util/HashMap;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;->b:Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lbk/m;->b(Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    :goto_1
    invoke-virtual {p0, p1}, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;->m0(I)V

    :cond_3
    const-string p1, "device_permission_radio_group"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/miui/permcenter/permissions/RadioButtonPreference;

    const/4 p2, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1, p0}, Lcom/miui/permcenter/permissions/RadioButtonPreference;->j(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, p0}, Lcom/miui/permcenter/permissions/RadioButtonPreference;->g(Lwb/b;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/permcenter/permissions/RadioButtonPreference;->i(Z)V

    iget-object v0, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;->b:Ljava/lang/String;

    invoke-static {v0}, Ldc/d;->a(Ljava/lang/String;)Ldc/c;

    move-result-object v0

    invoke-virtual {v0}, Ldc/c;->d()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/miui/permcenter/permissions/RadioButtonPreference;->l(Z)V

    goto :goto_2

    :cond_4
    move-object p1, p2

    :cond_5
    :goto_2
    iput-object p1, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;->a:Lcom/miui/permcenter/permissions/RadioButtonPreference;

    invoke-direct {p0}, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;->n0()V

    invoke-static {p0}, Landroidx/lifecycle/w;->a(Landroidx/lifecycle/v;)Landroidx/lifecycle/o;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment$b;

    invoke-direct {v3, p0, p2}, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment$b;-><init>(Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;Ltj/d;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Llk/g;->b(Llk/i0;Ltj/g;Llk/k0;Lak/p;ILjava/lang/Object;)Llk/s1;

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "outState"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->onSaveInstanceState(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;->g0()I

    move-result v0

    const-string v1, "save_permissionAction"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;->h0()I

    move-result v0

    const-string v1, "save_permissionFlag"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setHorizontalPadding(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/common/base/BaseActivity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.miui.common.base.BaseActivity"

    invoke-static {v0, v1}, Lbk/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/miui/common/base/BaseActivity;

    invoke-static {p1}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/miui/common/base/BaseActivity;->setViewHorizontalPadding(Landroid/view/View;)V

    :cond_0
    return-void
.end method
