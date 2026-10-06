.class public final Lcom/miui/permcenter/permissions/e;
.super Landroidx/lifecycle/c0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/permcenter/permissions/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/lifecycle/c0<",
        "Lcc/g;",
        ">;"
    }
.end annotation


# static fields
.field public static final l:Lcom/miui/permcenter/permissions/e$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final m:Lcom/miui/permcenter/permissions/e;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/permcenter/permissions/e$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/permcenter/permissions/e$a;-><init>(Lbk/g;)V

    sput-object v0, Lcom/miui/permcenter/permissions/e;->l:Lcom/miui/permcenter/permissions/e$a;

    new-instance v0, Lcom/miui/permcenter/permissions/e;

    invoke-direct {v0}, Lcom/miui/permcenter/permissions/e;-><init>()V

    sput-object v0, Lcom/miui/permcenter/permissions/e;->m:Lcom/miui/permcenter/permissions/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/lifecycle/c0;-><init>()V

    return-void
.end method

.method public static final synthetic p()Lcom/miui/permcenter/permissions/e;
    .locals 1

    sget-object v0, Lcom/miui/permcenter/permissions/e;->m:Lcom/miui/permcenter/permissions/e;

    return-object v0
.end method


# virtual methods
.method public final q()V
    .locals 7

    new-instance v6, Lcc/g;

    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    const-string v1, "forceLoadAll"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcc/g;-><init>(Ljava/lang/String;ILandroid/util/ArrayMap;ZZ)V

    invoke-virtual {p0, v6}, Landroidx/lifecycle/c0;->o(Ljava/lang/Object;)V

    return-void
.end method

.method public final r()V
    .locals 7

    new-instance v6, Lcc/g;

    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    const-string v1, ""

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcc/g;-><init>(Ljava/lang/String;ILandroid/util/ArrayMap;ZZ)V

    invoke-virtual {p0, v6}, Landroidx/lifecycle/c0;->o(Ljava/lang/Object;)V

    return-void
.end method

.method public final s(Ljava/lang/String;ILandroid/util/ArrayMap;ZZ)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/util/ArrayMap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;ZZ)V"
        }
    .end annotation

    const-string v0, "pkgName"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resultPermAction"

    invoke-static {p3, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcc/g;

    move-object v1, v0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcc/g;-><init>(Ljava/lang/String;ILandroid/util/ArrayMap;ZZ)V

    invoke-virtual {p0, v0}, Landroidx/lifecycle/c0;->o(Ljava/lang/Object;)V

    return-void
.end method
