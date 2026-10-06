.class Lu3/h$g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu3/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "g"
.end annotation


# static fields
.field private static final a:Lu3/h;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lu3/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu3/h;-><init>(Lu3/h$a;)V

    sput-object v0, Lu3/h$g;->a:Lu3/h;

    return-void
.end method

.method static synthetic a()Lu3/h;
    .locals 1

    sget-object v0, Lu3/h$g;->a:Lu3/h;

    return-object v0
.end method
