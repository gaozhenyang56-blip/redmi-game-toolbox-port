.class public final Lob/g;
.super Lob/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lob/g$a;
    }
.end annotation


# static fields
.field public static final f:Lob/g$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final b:Lcom/miui/permcenter/AppPermissionInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private d:Z

.field private e:Lcom/miui/permcenter/AppPermissionInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lob/g$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lob/g$a;-><init>(Lbk/g;)V

    sput-object v0, Lob/g;->f:Lob/g$a;

    return-void
.end method

.method public constructor <init>(Lcom/miui/permcenter/AppPermissionInfo;)V
    .locals 3
    .param p1    # Lcom/miui/permcenter/AppPermissionInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lob/f;-><init>()V

    iput-object p1, p0, Lob/g;->b:Lcom/miui/permcenter/AppPermissionInfo;

    iput-object p1, p0, Lob/g;->e:Lcom/miui/permcenter/AppPermissionInfo;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/miui/permcenter/AppPermissionInfo;->getUid()I

    move-result v0

    invoke-static {v0}, Lx4/z1;->m(I)I

    move-result v0

    const/16 v1, 0x3e7

    if-ne v0, v1, :cond_0

    const-string v0, "pkg_icon_xspace://"

    goto :goto_0

    :cond_0
    const-string v0, "pkg_icon://"

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/permcenter/AppPermissionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lob/g;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/miui/permcenter/AppPermissionInfo;->getPermissionToAction()Ljava/util/HashMap;

    move-result-object v0

    const-wide/16 v1, 0x200

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x3

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v1, :cond_3

    :goto_1
    invoke-virtual {p1}, Lcom/miui/permcenter/AppPermissionInfo;->getIsAllowStartByWakePath()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 p1, 0x1

    :goto_3
    iput-boolean p1, p0, Lob/g;->d:Z

    :cond_4
    return-void
.end method

.method public static final d(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p0    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lnb/c;",
            ">;)",
            "Ljava/util/List<",
            "Lob/f;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lob/g;->f:Lob/g$a;

    invoke-virtual {v0, p0}, Lob/g$a;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lob/g;->d:Z

    return v0
.end method

.method public final c()Lcom/miui/permcenter/AppPermissionInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lob/g;->b:Lcom/miui/permcenter/AppPermissionInfo;

    return-object v0
.end method
