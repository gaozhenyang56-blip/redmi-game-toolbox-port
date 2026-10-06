.class public Lqf/a$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqf/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lh3/b;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lh3/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqf/a$d;->a:Ljava/lang/String;

    iput-object p2, p0, Lqf/a$d;->b:Lh3/b;

    return-void
.end method

.method static synthetic a(Lqf/a$d;)Lh3/b;
    .locals 0

    iget-object p0, p0, Lqf/a$d;->b:Lh3/b;

    return-object p0
.end method

.method static synthetic b(Lqf/a$d;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lqf/a$d;->a:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lqf/a$d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lqf/a$d;->b:Lh3/b;

    invoke-virtual {v1}, Lh3/b;->w()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
