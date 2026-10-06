.class Lzi/s$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzi/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/Boolean;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field final synthetic f:Lzi/s;


# direct methods
.method private constructor <init>(Lzi/s;)V
    .locals 0

    iput-object p1, p0, Lzi/s$a;->f:Lzi/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lzi/s$a;->a:Ljava/lang/Boolean;

    iput-object p1, p0, Lzi/s$a;->b:Ljava/lang/String;

    iput-object p1, p0, Lzi/s$a;->c:Ljava/lang/String;

    iput-object p1, p0, Lzi/s$a;->d:Ljava/lang/String;

    iput-object p1, p0, Lzi/s$a;->e:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lzi/s;Lzi/t;)V
    .locals 0

    invoke-direct {p0, p1}, Lzi/s$a;-><init>(Lzi/s;)V

    return-void
.end method


# virtual methods
.method a()Z
    .locals 1

    iget-object v0, p0, Lzi/s$a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzi/s$a;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzi/s$a;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzi/s$a;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lzi/s$a;->a:Ljava/lang/Boolean;

    :cond_1
    iget-object v0, p0, Lzi/s$a;->a:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
