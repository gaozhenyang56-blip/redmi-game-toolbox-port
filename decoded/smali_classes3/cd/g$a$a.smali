.class Lcd/g$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcd/g$a;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcd/g$a;


# direct methods
.method constructor <init>(Lcd/g$a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcd/g$a$a;->b:Lcd/g$a;

    iput-object p2, p0, Lcd/g$a$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcd/g$a$a;->a:Ljava/lang/String;

    invoke-static {v0}, Ldd/c;->b(Ljava/lang/String;)V

    return-void
.end method
