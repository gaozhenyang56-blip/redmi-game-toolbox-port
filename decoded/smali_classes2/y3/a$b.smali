.class Ly3/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly3/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static final a:Ly3/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ly3/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ly3/a;-><init>(Ly3/a$a;)V

    sput-object v0, Ly3/a$b;->a:Ly3/a;

    return-void
.end method

.method static synthetic a()Ly3/a;
    .locals 1

    sget-object v0, Ly3/a$b;->a:Ly3/a;

    return-object v0
.end method
