.class public Lzi/u3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/Object;

.field public static final b:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final c:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lzi/u3;->a:Ljava/lang/Object;

    sget-object v0, Lzi/s7;->p:Lzi/s7;

    invoke-virtual {v0}, Lzi/s7;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lzi/u3;->b:Ljava/lang/String;

    sget-object v0, Lzi/s7;->q:Lzi/s7;

    invoke-virtual {v0}, Lzi/s7;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lzi/u3;->c:Ljava/lang/String;

    return-void
.end method
