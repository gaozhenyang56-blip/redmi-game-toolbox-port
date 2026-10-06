.class public Lqf/a$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqf/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/miui/antivirus/result/b;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/miui/antivirus/result/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqf/a$e;->a:Ljava/lang/String;

    iput-object p2, p0, Lqf/a$e;->b:Lcom/miui/antivirus/result/b;

    return-void
.end method

.method static synthetic a(Lqf/a$e;)Lcom/miui/antivirus/result/b;
    .locals 0

    iget-object p0, p0, Lqf/a$e;->b:Lcom/miui/antivirus/result/b;

    return-object p0
.end method

.method static synthetic b(Lqf/a$e;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lqf/a$e;->a:Ljava/lang/String;

    return-object p0
.end method
