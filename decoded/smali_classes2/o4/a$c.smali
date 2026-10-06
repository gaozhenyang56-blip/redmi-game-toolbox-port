.class Lo4/a$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo4/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Z

.field d:I

.field e:Landroid/os/IBinder;

.field f:Lo4/a$b;

.field g:Ljava/lang/Object;

.field final synthetic h:Lo4/a;


# direct methods
.method constructor <init>(Lo4/a;)V
    .locals 0

    iput-object p1, p0, Lo4/a$c;->h:Lo4/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lo4/a$c;->c:Z

    iput p1, p0, Lo4/a$c;->d:I

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo4/a$c;->g:Ljava/lang/Object;

    return-void
.end method
