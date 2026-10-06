.class Lzi/c5$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzi/c5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static a:Lzi/c5;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lzi/c5;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lzi/c5;-><init>(Lzi/d5;)V

    sput-object v0, Lzi/c5$a;->a:Lzi/c5;

    return-void
.end method

.method static synthetic a()Lzi/c5;
    .locals 1

    sget-object v0, Lzi/c5$a;->a:Lzi/c5;

    return-object v0
.end method
