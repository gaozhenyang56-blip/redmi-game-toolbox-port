.class public final synthetic Lz2/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:Lz2/d$b;


# direct methods
.method public synthetic constructor <init>(Lz2/d$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/e;->a:Lz2/d$b;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object v0, p0, Lz2/e;->a:Lz2/d$b;

    invoke-static {v0, p1, p2}, Lz2/d$b;->b(Lz2/d$b;Landroid/widget/CompoundButton;Z)V

    return-void
.end method
