.class Lcom/xiaomi/micloudsdk/stat/b$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/micloudsdk/stat/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static final a:Lcom/xiaomi/micloudsdk/stat/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/xiaomi/micloudsdk/stat/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaomi/micloudsdk/stat/b;-><init>(Lcom/xiaomi/micloudsdk/stat/b$a;)V

    sput-object v0, Lcom/xiaomi/micloudsdk/stat/b$b;->a:Lcom/xiaomi/micloudsdk/stat/b;

    return-void
.end method

.method static synthetic a()Lcom/xiaomi/micloudsdk/stat/b;
    .locals 1

    sget-object v0, Lcom/xiaomi/micloudsdk/stat/b$b;->a:Lcom/xiaomi/micloudsdk/stat/b;

    return-object v0
.end method
