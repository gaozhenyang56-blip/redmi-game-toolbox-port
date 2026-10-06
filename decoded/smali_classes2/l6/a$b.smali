.class Ll6/a$b;
.super Lmiui/slide/ISlideChangeListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll6/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private a:Ll6/a$a;


# direct methods
.method public constructor <init>(Ll6/a$a;)V
    .locals 0

    invoke-direct {p0}, Lmiui/slide/ISlideChangeListener$Stub;-><init>()V

    iput-object p1, p0, Ll6/a$b;->a:Ll6/a$a;

    return-void
.end method


# virtual methods
.method public onSlideChanged(I)V
    .locals 1

    iget-object v0, p0, Ll6/a$b;->a:Ll6/a$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ll6/a$a;->onSlideChanged(I)V

    :cond_0
    return-void
.end method
