.class public Lcom/miui/gamebooster/utils/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/utils/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/gamebooster/utils/b$a;->a:Ljava/lang/String;

    iput-wide p2, p0, Lcom/miui/gamebooster/utils/b$a;->b:J

    return-void
.end method

.method static synthetic a(Lcom/miui/gamebooster/utils/b$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/utils/b$a;->a:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public b()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/gamebooster/utils/b$a;->b:J

    return-wide v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/utils/b$a;->a:Ljava/lang/String;

    return-object v0
.end method
