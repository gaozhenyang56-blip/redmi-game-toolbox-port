.class public final enum Landroidx/annotation/RestrictTo$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/annotation/RestrictTo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/annotation/RestrictTo$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Landroidx/annotation/RestrictTo$a;

.field public static final enum b:Landroidx/annotation/RestrictTo$a;

.field public static final enum c:Landroidx/annotation/RestrictTo$a;

.field public static final enum d:Landroidx/annotation/RestrictTo$a;
    .annotation runtime Lkotlin/Deprecated;
        message = "Use LIBRARY_GROUP_PREFIX instead."
    .end annotation
.end field

.field public static final enum e:Landroidx/annotation/RestrictTo$a;

.field public static final enum f:Landroidx/annotation/RestrictTo$a;

.field private static final synthetic g:[Landroidx/annotation/RestrictTo$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/annotation/RestrictTo$a;

    const-string v1, "LIBRARY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/annotation/RestrictTo$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/annotation/RestrictTo$a;->a:Landroidx/annotation/RestrictTo$a;

    new-instance v0, Landroidx/annotation/RestrictTo$a;

    const-string v1, "LIBRARY_GROUP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/annotation/RestrictTo$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/annotation/RestrictTo$a;->b:Landroidx/annotation/RestrictTo$a;

    new-instance v0, Landroidx/annotation/RestrictTo$a;

    const-string v1, "LIBRARY_GROUP_PREFIX"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroidx/annotation/RestrictTo$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/annotation/RestrictTo$a;->c:Landroidx/annotation/RestrictTo$a;

    new-instance v0, Landroidx/annotation/RestrictTo$a;

    const-string v1, "GROUP_ID"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroidx/annotation/RestrictTo$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/annotation/RestrictTo$a;->d:Landroidx/annotation/RestrictTo$a;

    new-instance v0, Landroidx/annotation/RestrictTo$a;

    const-string v1, "TESTS"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroidx/annotation/RestrictTo$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/annotation/RestrictTo$a;->e:Landroidx/annotation/RestrictTo$a;

    new-instance v0, Landroidx/annotation/RestrictTo$a;

    const-string v1, "SUBCLASSES"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroidx/annotation/RestrictTo$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/annotation/RestrictTo$a;->f:Landroidx/annotation/RestrictTo$a;

    invoke-static {}, Landroidx/annotation/RestrictTo$a;->a()[Landroidx/annotation/RestrictTo$a;

    move-result-object v0

    sput-object v0, Landroidx/annotation/RestrictTo$a;->g:[Landroidx/annotation/RestrictTo$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static final synthetic a()[Landroidx/annotation/RestrictTo$a;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Landroidx/annotation/RestrictTo$a;

    sget-object v1, Landroidx/annotation/RestrictTo$a;->a:Landroidx/annotation/RestrictTo$a;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroidx/annotation/RestrictTo$a;->b:Landroidx/annotation/RestrictTo$a;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Landroidx/annotation/RestrictTo$a;->c:Landroidx/annotation/RestrictTo$a;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Landroidx/annotation/RestrictTo$a;->d:Landroidx/annotation/RestrictTo$a;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Landroidx/annotation/RestrictTo$a;->e:Landroidx/annotation/RestrictTo$a;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Landroidx/annotation/RestrictTo$a;->f:Landroidx/annotation/RestrictTo$a;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/annotation/RestrictTo$a;
    .locals 1

    const-class v0, Landroidx/annotation/RestrictTo$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/annotation/RestrictTo$a;

    return-object p0
.end method

.method public static values()[Landroidx/annotation/RestrictTo$a;
    .locals 1

    sget-object v0, Landroidx/annotation/RestrictTo$a;->g:[Landroidx/annotation/RestrictTo$a;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/annotation/RestrictTo$a;

    return-object v0
.end method
