.class public Lqf/a$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqf/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ll4/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ll4/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqf/a$c;->a:Ljava/lang/String;

    iput-object p2, p0, Lqf/a$c;->b:Ll4/a;

    return-void
.end method

.method static synthetic a(Lqf/a$c;)Ll4/a;
    .locals 0

    iget-object p0, p0, Lqf/a$c;->b:Ll4/a;

    return-object p0
.end method

.method static synthetic b(Lqf/a$c;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lqf/a$c;->a:Ljava/lang/String;

    return-object p0
.end method
