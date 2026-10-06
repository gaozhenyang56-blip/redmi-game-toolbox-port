.class public final synthetic Ld8/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:Ld8/l;


# direct methods
.method public synthetic constructor <init>(Ld8/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld8/j;->a:Ld8/l;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object v0, p0, Ld8/j;->a:Ld8/l;

    invoke-static {v0, p1, p2}, Ld8/l$a;->b(Ld8/l;Landroid/widget/CompoundButton;Z)V

    return-void
.end method
