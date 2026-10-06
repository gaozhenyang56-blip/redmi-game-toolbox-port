.class public Lqf/a$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqf/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/miui/optimizemanage/optimizeresult/b;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/miui/optimizemanage/optimizeresult/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqf/a$f;->a:Ljava/lang/String;

    iput-object p2, p0, Lqf/a$f;->b:Lcom/miui/optimizemanage/optimizeresult/b;

    return-void
.end method

.method static synthetic a(Lqf/a$f;)Lcom/miui/optimizemanage/optimizeresult/b;
    .locals 0

    iget-object p0, p0, Lqf/a$f;->b:Lcom/miui/optimizemanage/optimizeresult/b;

    return-object p0
.end method

.method static synthetic b(Lqf/a$f;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lqf/a$f;->a:Ljava/lang/String;

    return-object p0
.end method
