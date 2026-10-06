.class public final Lcom/miui/permcenter/permissions/a;
.super Landroidx/lifecycle/r0;
.source "SourceFile"


# instance fields
.field private final a:Lcom/miui/securitycenter/Application;

.field private final b:Lcom/miui/permcenter/permissions/e;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Landroidx/lifecycle/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/a0<",
            "Lcom/miui/permcenter/permissions/c;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/lifecycle/r0;-><init>()V

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/permcenter/permissions/a;->a:Lcom/miui/securitycenter/Application;

    sget-object v0, Lcom/miui/permcenter/permissions/e;->l:Lcom/miui/permcenter/permissions/e$a;

    invoke-virtual {v0}, Lcom/miui/permcenter/permissions/e$a;->a()Lcom/miui/permcenter/permissions/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/permcenter/permissions/e;->r()V

    iput-object v0, p0, Lcom/miui/permcenter/permissions/a;->b:Lcom/miui/permcenter/permissions/e;

    new-instance v0, Lcom/miui/permcenter/permissions/a$a;

    invoke-direct {v0, p0}, Lcom/miui/permcenter/permissions/a$a;-><init>(Lcom/miui/permcenter/permissions/a;)V

    iput-object v0, p0, Lcom/miui/permcenter/permissions/a;->c:Landroidx/lifecycle/a0;

    return-void
.end method

.method public static final synthetic a(Lcom/miui/permcenter/permissions/a;)Lcom/miui/securitycenter/Application;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/permissions/a;->a:Lcom/miui/securitycenter/Application;

    return-object p0
.end method

.method public static final synthetic b(Lcom/miui/permcenter/permissions/a;Landroid/content/pm/PackageInfo;Ltj/d;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/permcenter/permissions/a;->f(Landroid/content/pm/PackageInfo;Ltj/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final f(Landroid/content/pm/PackageInfo;Ltj/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageInfo;",
            "Ltj/d<",
            "-",
            "Lcom/miui/permcenter/permissions/c;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {}, Llk/w0;->b()Llk/d0;

    move-result-object v0

    new-instance v1, Lcom/miui/permcenter/permissions/a$c;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lcom/miui/permcenter/permissions/a$c;-><init>(Landroid/content/pm/PackageInfo;Lcom/miui/permcenter/permissions/a;Ltj/d;)V

    invoke-static {v0, v1, p2}, Llk/g;->c(Ltj/g;Lak/p;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final c()Landroidx/lifecycle/a0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/a0<",
            "Lcom/miui/permcenter/permissions/c;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/permcenter/permissions/a;->c:Landroidx/lifecycle/a0;

    return-object v0
.end method

.method public final d()Lcom/miui/permcenter/permissions/e;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/permcenter/permissions/a;->b:Lcom/miui/permcenter/permissions/e;

    return-object v0
.end method

.method public final e(Landroid/content/pm/PackageInfo;)V
    .locals 7
    .param p1    # Landroid/content/pm/PackageInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "packageInfo"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/lifecycle/s0;->a(Landroidx/lifecycle/r0;)Llk/i0;

    move-result-object v1

    new-instance v4, Lcom/miui/permcenter/permissions/a$b;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lcom/miui/permcenter/permissions/a$b;-><init>(Lcom/miui/permcenter/permissions/a;Landroid/content/pm/PackageInfo;Ltj/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Llk/g;->b(Llk/i0;Ltj/g;Llk/k0;Lak/p;ILjava/lang/Object;)Llk/s1;

    return-void
.end method
